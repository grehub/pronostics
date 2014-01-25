<?php

namespace Grub\UserBundle\Entity;

use FOS\UserBundle\Entity\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="users")
 * @ORM\Entity(repositoryClass="Grub\UserBundle\Repository\UserRepository")
 */
class User extends BaseUser
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    protected $firstname;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    protected $lastname;
	
	/**
     * @ORM\OneToMany(targetEntity="Grub\PronosticsBundle\Entity\Bet", mappedBy="user")
     */
    protected $bets;
	
	
    public function __construct()
    {
        parent::__construct();
        // your own logic
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
     * Set firstname
     *
     * @param string $firstname
     */
    public function setFirstame($firstname)
    {
        $this->firstname = $firstname;
    }

    /**
     * Get firstname
     *
     * @param string $firstname
     */
    public function getFirstname()
    {
        return $this->firstname;
    }

    /**
     * Set lastname
     *
     * @param string $lastname
     */
    public function setLastname($lastname)
    {
        $this->lastname = $lastname;
    }

    /**
     * Get lastname
     *
     * @return string
     */
    public function getLastname()
    {
        return $this->lastname;
    }

    /**
     * Set firstname
     *
     * @param string $firstname
     */
    public function setFirstname($firstname)
    {
        $this->firstname = $firstname;
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
     * Get all informations for ranking display
     * @return array
     *
     */
    public function getRankingInfos()
    {
        $score = 0;
        $bonus = 0;
        $nb = 0;
        $cartonplein = 0;
        $acote = 0;
        $exact = 0;

        foreach($this->getBets() as $bet){
            $game=$bet->getGame();
            if($game->getStatus()==$game::FINISHED){
                $betScore = $bet->getScore();
                $betBonus = $bet->getBonus();

                $score += $betScore;
                $bonus += $betBonus;
                if(($betScore+$betBonus) == 8) $cartonplein++;
                if($betScore >= 3) $exact++;
                if($betScore == 0) $acote++;
                $nb++;

            }
        }

        return array(
            'username'=>$this->getUsername(),
            'firstname'=>$this->getFirstname(),
            'lastname'=>$this->getLastname(),
            'global'=>$score+$bonus,
            'globalrisq'=>$bonus,
            'globalsansrisq'=>$score,
            'moysansrisq'=>($nb==0)?0:number_format($score/$nb, 2, ',', ' '),
            'moyavecrisq'=>($nb==0)?0:number_format(($score+$bonus)/$nb, 2, ',', ' '),
            'class'=>'',
            'classrisq'=>'',
            'classsansrisq'=>'',
            'nb'=>$nb,
            'acote'=>$acote,
            'carton'=>$cartonplein,
            'exact'=>$exact,
            );
    }	
}
