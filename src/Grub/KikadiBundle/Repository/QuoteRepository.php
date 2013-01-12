<?php

namespace Grub\KikadiBundle\Repository;

use Doctrine\ORM\EntityRepository;

/**
 * QuoteRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class QuoteRepository extends EntityRepository
{
  public function findAllOrdered(){    
    return $query = $this->getEntityManager()->createQuery('
            SELECT q
            FROM GrubKikadiBundle:Quote q
            ORDER BY q.date DESC
        ')->getResult();
  }  
}