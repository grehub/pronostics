<?php

namespace Grub\PronosticsBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="prono_bet")
 * @ORM\Entity(repositoryClass="Grub\PronosticsBundle\Repository\BetRepository")
 */
class Bet {

    const PRONO_OK=3;
    const SCORE_OK=1;

    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="integer", length=2)
     * @Assert\NotNull
     * @Assert\Range(min = 0, minMessage = "Dommage, à ta place j'aurais essayé aussi.", max = 20, maxMessage = "{{ value }}?? Sérieux?? C'est du foot, pas du rugby...")
     */
    protected $scoreA;

    /**
     * @ORM\Column(type="integer", length=2)
     * @Assert\NotNull
     * @Assert\Range(min = 0, minMessage = "Dommage, à ta place j'aurais essayé aussi.", max = 20, maxMessage = "{{ value }}?? Sérieux?? C'est du foot, pas du rugby...")
     */
    protected $scoreB;

    /**
     * @ORM\Column(type="integer", length=2)
     * @Assert\NotNull
     * @Assert\Range(min = -3, minMessage = "Dommage, à ta place j'aurais essayé aussi.", max = 3, maxMessage = "Dommage, à ta place j'aurais essayé aussi.")
     */
    protected $risquette;

    /**
     * @ORM\ManyToOne(targetEntity="Game", inversedBy="bets", fetch="EAGER")
     * @ORM\JoinColumn(name="game_id", referencedColumnName="id")
     */
    protected $game;

    /**
     * @ORM\ManyToOne(targetEntity="Grub\UserBundle\Entity\User", inversedBy="bets", fetch="EAGER")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     */
    protected $user;

    public function __toString()
    {
        return $this->scoreA . ' ' . $this->scoreB;
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
     * Set risquette
     *
     * @param integer $risquette
     */
    public function setRisquette($risquette)
    {
        $this->risquette = $risquette;
    }

    /**
     * Get risquette
     *
     * @return integer
     */
    public function getRisquette()
    {
        return $this->risquette;
    }

    /**
     * Set game
     *
     * @param Grub\PronosticsBundle\Entity\Game $game
     */
    public function setGame(\Grub\PronosticsBundle\Entity\Game $game)
    {
        $this->game = $game;
    }

    /**
     * Get game
     *
     * @return Grub\PronosticsBundle\Entity\Game
     */
    public function getGame()
    {
        return $this->game;
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

	/**
	 * Calcul des points en fonction de l'issue du match (uniquement les matchs terminés)
	 * Le calcul ne prend pas en compte la risquette
	 * @return integer
	 */
	public function getScore(){
		$score = 0;
        $game=$this->getGame();
		//Calcul du score en fonction de l'issue du match
		if(($this->getScoreA()==$this->getScoreB() && $game->getScoreA()==$game->getScoreB())
		|| ($this->getScoreA()<$this->getScoreB() && $game->getScoreA()<$game->getScoreB())
        || ($this->getScoreA()>$this->getScoreB() && $game->getScoreA()>$game->getScoreB())){
			$score += self::PRONO_OK;
		}
		//Ajout de point si on trouve le bon score pour l'équipe A
		if($this->getScoreA()==$game->getScoreA()){
			$score += self::SCORE_OK;
		}
		//Ajout de point si on trouve le bon score pour l'équipe B
		if($this->getScoreB()==$game->getScoreB()){
			$score += self::SCORE_OK;
		}

		return $score;
	}

	/**
	 * Calcul du score de la risquette (pour les matchs
	 * @return integer
	 */
	public function getBonus(){
		$score = 0;
		//Calcul de la risquette
		if($this->getGame()->getRisquetteValidee() != true){
			$score -= $this->getRisquette();
		}else{
			$score += $this->getRisquette();
		}


		return $score;
	}
}
