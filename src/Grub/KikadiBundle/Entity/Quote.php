<?php

namespace Grub\KikadiBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="kikadica_quote")
 * @ORM\Entity(repositoryClass="Grub\KikadiBundle\Repository\QuoteRepository")
 */
class Quote {


    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\MaxLength(limit = 100, message = "On a demandé un nom, pas un roman")
     */
    protected $saidby;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\MaxLength(limit = 100, message = "On a demandé un nom, pas un roman")
     */
    protected $addedby;

    /**
     * @ORM\Column(type="datetime")
     */
    protected $date;
	
    /**
     * @ORM\Column(type="text")
     */
    protected $quote;
	
    /**
     * @ORM\Column(type="text", nullable="true")
     */
    protected $comment;

    /**
     * @ORM\Column(type="integer", length=2)
     * @Assert\NotNull
     */
    protected $score=0;

    public function __toString()
    {
        return $this->quote ;
    }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set saidby
     *
     * @param string $saidby
     */
    public function setSaidby($saidby)
    {
        $this->saidby = $saidby;
    }

    /**
     * Get saidby
     *
     * @return string 
     */
    public function getSaidby()
    {
        return $this->saidby;
    }

    /**
     * Set addedby
     *
     * @param string $addedby
     */
    public function setAddedby($addedby)
    {
        $this->addedby = $addedby;
    }

    /**
     * Get addedby
     *
     * @return string 
     */
    public function getAddedby()
    {
        return $this->addedby;
    }

    /**
     * Set date
     *
     * @param datetime $date
     */
    public function setDate($date)
    {
        $this->date = $date;
    }

    /**
     * Get date
     *
     * @return datetime 
     */
    public function getDate()
    {
        return "Le ".$this->date->format("d/m/Y à H\hi:s");
    }

    /**
     * Set comment
     *
     * @param text $comment
     */
    public function setComment($comment)
    {
        $this->comment = $comment;
    }

    /**
     * Get comment
     *
     * @return text 
     */
    public function getComment()
    {
        return $this->comment;
    }

    /**
     * Set quote
     *
     * @param text $quote
     */
    public function setQuote($quote)
    {
        $this->quote = $quote;
    }

    /**
     * Get quote
     *
     * @return text 
     */
    public function getQuote()
    {
        return $this->quote;
    }

    /**
     * Set score
     *
     * @param integer $score
     */
    public function setScore($score)
    {
        $this->score = $score;
    }

    /**
     * Get score
     *
     * @return integer 
     */
    public function getScore()
    {
      return $this->score;
//        $score=0;
//        foreach($this->votes as $vote){
//          $score += $vote->score;
//        }
//        return $score;
    }
}