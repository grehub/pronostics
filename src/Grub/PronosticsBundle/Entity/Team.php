<?php

namespace Grub\PronosticsBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="prono_team")
 */
class Team
{

    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=100)
     */
    protected $name;

    /**
     * @ORM\ManyToOne(targetEntity="Group", inversedBy="teams")
     * @ORM\JoinColumn(name="group_id", referencedColumnName="id")
     */
    protected $group;

    /**
     * @ORM\OneToMany(targetEntity="Game", mappedBy="teamA")
     */
    protected $gamesAsTeamA;

    /**
     * @ORM\OneToMany(targetEntity="Game", mappedBy="teamB")
     */
    protected $gamesAsTeamB;

    public function __toString() {
        return $this->name;
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
     * Set name
     *
     * @param string $name
     */
    public function setName($name)
    {
        $this->name = $name;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set group
     *
     * @param Grub\PronosticsBundle\Entity\Group $group
     */
    public function setGroup(\Grub\PronosticsBundle\Entity\Group $group)
    {
        $this->group = $group;
    }

    /**
     * Get group
     *
     * @return Grub\PronosticsBundle\Entity\Group 
     */
    public function getGroup()
    {
        return $this->group;
    }
    public function __construct()
    {
        $this->gamesAsTeamA = new \Doctrine\Common\Collections\ArrayCollection();
    $this->gamesAsTeamB = new \Doctrine\Common\Collections\ArrayCollection();
    }
    
    /**
     * Add gamesAsTeamA
     *
     * @param Grub\PronosticsBundle\Entity\Game $gamesAsTeamA
     */
    public function addGame(\Grub\PronosticsBundle\Entity\Game $gamesAsTeamA)
    {
        $this->gamesAsTeamA[] = $gamesAsTeamA;
    }

    /**
     * Get gamesAsTeamA
     *
     * @return Doctrine\Common\Collections\Collection 
     */
    public function getGamesAsTeamA()
    {
        return $this->gamesAsTeamA;
    }

    /**
     * Get gamesAsTeamB
     *
     * @return Doctrine\Common\Collections\Collection 
     */
    public function getGamesAsTeamB()
    {
        return $this->gamesAsTeamB;
    }
}