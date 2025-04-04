<?php
namespace App\Repository;

use App\Entity\BrickCollection;
use App\Entity\Brick;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

class BrickRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Brick::class);
    }

    public function getBricks(BrickCollection $collection): array
    {
        return $this->createQueryBuilder('b')
            ->andWhere('b.collection = :collection')
            ->setParameter('collection', $collection)
            ->getQuery()
            ->getResult();
    }
}