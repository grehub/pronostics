<?php

namespace Grub\UserBundle\Repository;

use Doctrine\ORM\EntityRepository;

class UserRepository extends EntityRepository
{

    public function findAllJoinedToBet()
    {
        $query = $this->getEntityManager()->createQuery('
            SELECT u, b
            FROM GrubUserBundle:User u
            LEFT JOIN u.bets b
        ');

        try {
            return $query->getResult();
        } catch (\Doctrine\ORM\NoResultException $e) {
            return null;
        }
    }
}
