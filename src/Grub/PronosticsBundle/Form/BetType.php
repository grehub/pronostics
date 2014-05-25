<?php

namespace Grub\PronosticsBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class BetType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('scoreA');
        $builder->add('scoreB');
        $builder->add('risquette');
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Grub\PronosticsBundle\Entity\Bet',
            'csrf_protection' => false
        ));
    }

    public function getName()
    {
        return 'bet';
    }
}