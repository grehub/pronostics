<?php

namespace Grub\PronosticsBundle\Repository;

use Doctrine\ORM\EntityRepository;

class GameRepository extends EntityRepository
{

    public function findJoinedToTeamAndBetByUser($userId)
    {
        $query = $this->getEntityManager()->createQuery('
            SELECT g, b
            FROM GrubPronosticsBundle:Game g
            LEFT JOIN g.bets b WITH b.user = :id
        ')->setParameter('id', $userId);

        try {
            return $query->getResult();
        } catch (\Doctrine\ORM\NoResultException $e) {
            return null;
        }
    }

    public function findOneJoinedToTeamAndBetByUser($gameId, $userId)
    {
        $query = $this->getEntityManager()->createQuery('
            SELECT g, b
            FROM GrubPronosticsBundle:Game g
            LEFT JOIN g.bets b WITH b.user = :userId
            WHERE g.id = :gameId
        ')->setParameter('gameId', $gameId)
            ->setParameter('userId', $userId);

        try {
            return $query->getSingleResult();
        } catch (\Doctrine\ORM\NoResultException $e) {
            return null;
        }
    }

    public function findAllFinishedGroupPhase()
    {
        $query = $this->getEntityManager()->createQuery('
            SELECT g, ta, tb, ga, gb
            FROM GrubPronosticsBundle:Game
             g
            JOIN g.teamA ta
            JOIN g.teamB tb
            JOIN ta.group ga
            JOIN tb.group gb
            WHERE g.teamA IS NOT NULL
            AND g.teamB IS NOT NULL
            AND g.scoreA IS NOT NULL
            AND g.scoreB IS NOT NULL
            AND g.date < :now
            AND g.title LIKE \'Groupe %\'
        ')->setParameter('now', new \DateTime());

        try {
            return $query->getResult();
        } catch (\Doctrine\ORM\NoResultException $e) {
            return null;
        }
    }
}
