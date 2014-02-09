<?php

namespace Grub\UserBundle\Repository;

use Doctrine\ORM\EntityRepository;

class UserRepository extends EntityRepository
{

    public function findAllJoinedToBet($groupid)
    {
        $qb = $this->createQueryBuilder('u');
        $qb
            ->select('u,b')
            ->join('u.bets','b')
            ->where('u.group = :group')
            ->setParameter('group',$groupid)
        ;

        try {
            return $qb->getQuery()->getResult();
        } catch (\Doctrine\ORM\NoResultException $e) {
            return null;
        }
    }
}
