<?php

namespace Grub\PronosticsBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="prono_game")
 * @ORM\Entity(repositoryClass="Grub\PronosticsBundle\Repository\GameRepository")
 */
class Game
{

    const NOT_STARTED = 'Pas commencé',
        IN_PROGRESS = 'Match en cours',
        FINISHED = 'Terminé';

    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\ManyToOne(targetEntity="Team", inversedBy="gamesAsTeamA", fetch="EAGER")
     * @ORM\JoinColumn(name="teamA_id", referencedColumnName="id", nullable=true)
     */
    protected $teamA;

    /**
     * @ORM\ManyToOne(targetEntity="Team", inversedBy="gamesAsTeamB", fetch="EAGER")
     * @ORM\JoinColumn(name="teamB_id", referencedColumnName="id", nullable=true)
     */
    protected $teamB;

    /**
     * @ORM\Column(type="string", length=100)
     */
    protected $title;

    /**
     * @ORM\Column(type="integer", length=2, nullable=true)
     */
    protected $scoreA;

    /**
     * @ORM\Column(type="integer", length=2, nullable=true)
     */
    protected $scoreB;

    /**
     * @ORM\Column(type="datetime")
     */
    protected $date;

    /**
     * @ORM\Column(type="string")
     */
    protected $location;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    protected $risquette;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    protected $risquetteValidee;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    protected $channel;

    /**
     * @ORM\OneToMany(targetEntity="Bet", mappedBy="game")
     */
    protected $bets;

    public function __toString()
    {
        return $this->title;
    }

    public function getStatus()
    {
        if (new \DateTime() > $this->getDate()) {
            if ($this->getScoreA() !== NULL && $this->getScoreB() !== NULL) {
                return self::FINISHED;
            } else {
                return self::IN_PROGRESS;
            }
        } else {
            return self::NOT_STARTED;
        }
    }

    public function __construct()
    {
        $this->bets = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set title
     *
     * @param string $title
     */
    public function setTitle($title)
    {
        $this->title = $title;
    }

    /**
     * Get title
     *
     * @return string
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * Set scoreA
     *
     * @param integer $scoreA
     */
    public function setScoreA($scoreA)
    {
        $this->scoreA = $scoreA;
    }

    /**
     * Get scoreA
     *
     * @return integer
     */
    public function getScoreA()
    {
        return $this->scoreA;
    }

    /**
     * Set scoreB
     *
     * @param integer $scoreB
     */
    public function setScoreB($scoreB)
    {
        $this->scoreB = $scoreB;
    }

    /**
     * Get scoreB
     *
     * @return integer
     */
    public function getScoreB()
    {
        return $this->scoreB;
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
        return $this->date;
    }

    /**
     * Set location
     *
     * @param string $location
     */
    public function setLocation($location)
    {
        $this->location = $location;
    }

    /**
     * Get location
     *
     * @return string
     */
    public function getLocation()
    {
        return $this->location;
    }

    /**
     * Set risquette
     *
     * @param text $risquette
     */
    public function setRisquette($risquette)
    {
        $this->risquette = $risquette;
    }

    /**
     * Get risquette
     *
     * @return text
     */
    public function getRisquette()
    {
        return $this->risquette;
    }

    /**
     * Set risquetteValidee
     *
     * @param boolean $risquetteValidee
     */
    public function setRisquetteValidee($risquetteValidee)
    {
        $this->risquetteValidee = $risquetteValidee;
    }

    /**
     * Get risquetteValidee
     *
     * @return boolean
     */
    public function getRisquetteValidee()
    {
        return $this->risquetteValidee;
    }

    /**
     * Set teamA
     *
     * @param Grub\PronosticsBundle\Entity\Team $teamA
     */
    public function setTeamA(\Grub\PronosticsBundle\Entity\Team $teamA)
    {
        $this->teamA = $teamA;
    }

    /**
     * Get teamA
     *
     * @return Grub\PronosticsBundle\Entity\Team
     */
    public function getTeamA()
    {
        return $this->teamA;
    }

    /**
     * Set teamB
     *
     * @param Grub\PronosticsBundle\Entity\Team $teamB
     */
    public function setTeamB(\Grub\PronosticsBundle\Entity\Team $teamB)
    {
        $this->teamB = $teamB;
    }

    /**
     * Get teamB
     *
     * @return Grub\PronosticsBundle\Entity\Team
     */
    public function getTeamB()
    {
        return $this->teamB;
    }

    /**
     * Add bets
     *
     * @param Grub\PronosticsBundle\Entity\Bet $bets
     */
    public function addBet(\Grub\PronosticsBundle\Entity\Bet $bets)
    {
        $this->bets[] = $bets;
    }

    /**
     * Get bets
     *
     * @return Doctrine\Common\Collections\Collection
     */
    public function getBets()
    {
        return $this->bets;
    }

    /**
     * Set channel
     *
     * @param string $channel
     */
    public function setChannel($channel)
    {
        $this->channel = $channel;
    }

    /**
     * Get channel
     *
     * @return string 
     */
    public function getChannel()
    {
        return $this->channel;
    }
}