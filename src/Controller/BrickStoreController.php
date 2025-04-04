<?php

namespace App\Controller;

use App\Entity\BrickCollection;
use App\Repository\BrickRepository;
use App\Repository\BrickCollectionRepository;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class BrickStoreController extends AbstractController
{
    #[Route('/brick_store', name: 'brickStore')]
    public function brickStore(
        BrickRepository $brickRepository,
        BrickCollectionRepository $brickCollectionRepository
    ): Response {
        $collections = $brickCollectionRepository->findAll();
        $bricks = $brickRepository->findAll();

        return $this->render('brick.html.twig', [
            'legos' => $bricks,
            'collections' => $collections,
        ]);
    }

    #[Route('/brick_store/{id}', name: 'brick')]
    public function brick(
        int $id,
        BrickRepository $brickRepository,
        BrickCollectionRepository $brickCollectionRepository
    ): Response {
        $collection = $brickCollectionRepository->find($id);
        if (!$collection) {
            throw $this->createNotFoundException('Collection not found');
        }

        $bricks = $brickRepository->getBricks($collection);
        $collections = $brickCollectionRepository->findAll();   

        return $this->render('brick.html.twig', [
            'legos' => $bricks,
            'collections' => $collections,
        ]);
    }
}