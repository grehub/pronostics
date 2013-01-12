<?php

namespace Grub\KikadiBundle\Controller;

use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\DependencyInjection\ContainerAware;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Form\FormError;
use Grub\KikadiBundle\Form\QuoteType;
use Grub\KikadiBundle\Entity\Quote;



class DefaultController extends ContainerAware
{

    public function homeAction(Request $request){
	
	  $quotes = $this->container->get('doctrine.orm.entity_manager')->getRepository('GrubKikadiBundle:Quote')->findAllOrdered();
	
      return $this->container->get('templating')->renderResponse('GrubKikadiBundle:Default:home.html.twig',array('quotes'=>$quotes));
    }
    
    public function addFormAction(Request $request){
      $form = $this->container->get('form.factory')->create(new QuoteType());
      return $this->container->get('templating')->renderResponse('GrubKikadiBundle:Default:addForm.html.twig',array('form'=>$form->createView()));
    }
    
    public function submitQuoteAction(Request $request){
      
      $em = $this->container->get('doctrine.orm.entity_manager');
      
	  $quote = new Quote();
      $form = $this->container->get('form.factory')->create(new QuoteType(),$quote);

      $form->bindRequest($request);

      if ($form->isValid()) {
		  $quote->setDate(new \Datetime());
          $em->persist($quote);
          $em->flush();
		  
		  return new RedirectResponse($this->container->get('router')->generate('GrubKikadiBundle_home'));
      }else{
        return $this->container->get('templating')->renderResponse('GrubKikadiBundle:Default:addForm.html.twig',array('form'=>$form->createView()));
      }      
    }
    
    public function voteQuoteAction($quote_id)
    {
        $user = $this->container->get('security.context')->getToken()->getUser();

        $em = $this->container->get('doctrine.orm.entity_manager');
        $quote = $em->getRepository('GrubKikadiBundle:Quote')->find($quote_id);

        if (!$quote) {
            throw $this->createNotFoundException('Voter deux fois c\'est tricher.');
        }
        
        $vote = $em->getRepository('GrubKikadiBundle:Vote')->find($quote_id);
        if (!$quote) {
            throw $this->createNotFoundException('Voter deux fois c\'est tricher.');
        }

        $vote = new Vote();
        $vote->setQuote($quote);
        $vote->setUser($user);


        $form = $this->container->get('form.factory')->create(new VoteType(), $vote);

        $form->bindRequest($request);

        if ($form->isValid()) {
            $em->persist($vote);
            $em->flush();
        }


        return $this->container->get('templating')->renderResponse('GrubKikadiBundle:Default:home.html.twig',
            array());
    }
}
