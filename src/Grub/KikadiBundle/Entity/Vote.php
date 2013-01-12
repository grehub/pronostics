<?php

namespace Grub\KikadiBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="kikadica_vote")
 * @ORM\Entity(repositoryClass="Grub\KikadiBundle\Repository\VoteRepository")
 */
class Vote {

    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="integer", length=2)
     * @Assert\NotNull
     * @Assert\Min(limit = "-1", message = "Dommage, à ta place j'aurais essayé aussi.")
     * @Assert\Max(limit = 1, message = "Dommage, à ta place j'aurais essayé aussi.")
     */
    protected $score;

    /**
     * @ORM\ManyToOne(targetEntity="Quote", inversedBy="votes", fetch="EAGER")
     * @ORM\JoinColumn(name="quote_id", referencedColumnName="id")
     */
    protected $quote;

    /**
     * @ORM\ManyToOne(targetEntity="Grub\UserBundle\Entity\User", inversedBy="votes", fetch="EAGER")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     */
    protected $user;

    public function __toString()
    {
        return $this->score;
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
    }

    /**
     * Set quote
     *
     * @param Grub\KikadiBundle\Entity\Quote $quote
     */
    public function setQuote(\Grub\KikadiBundle\Entity\Quote $quote)
    {
        $this->quote = $quote;
    }

    /**
     * Get quote
     *
     * @return Grub\KikadiBundle\Entity\Quote 
     */
    public function getQuote()
    {
        return $this->quote;
    }

    /**
     * Set user
     *
     * @param Grub\UserBundle\Entity\User $user
     */
    public function setUser(\Grub\UserBundle\Entity\User $user)
    {
        $this->user = $user;
    }

    /**
     * Get user
     *
     * @return Grub\UserBundle\Entity\User 
     */
    public function getUser()
    {
        return $this->user;
    }
}