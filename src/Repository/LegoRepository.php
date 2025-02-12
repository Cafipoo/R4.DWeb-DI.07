<?php

namespace App\Repository;

use App\Entity\Lego;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Lego>
 */
class LegoRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Lego::class);
    }
       public function findOneByCat($value): array
       {
           return $this->createQueryBuilder('l')
               ->andWhere('l.collection = :cat')
               ->setParameter('cat', $value)
               ->getQuery()
               ->getResult()
           ;
       }
}
