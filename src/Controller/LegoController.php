<?php

namespace App\Controller;

use App\Entity\Lego;
use App\Entity\LegoCollection;
use App\Repository\LegoRepository;
use App\Repository\LegoCollectionRepository;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class LegoController extends AbstractController
{
    #[Route('/', name: 'home')]
    public function home(LegoRepository $legoRepository, LegoCollectionRepository $legoCollectionRepository): Response
    {
        $legos = $legoRepository->findAll();
        $collections = $legoCollectionRepository->findAll();
        return $this->render('lego.html.twig', [
            'legos' => $legos,
            'collections' => $collections,
        ]);
    }

    #[Route('/me', name: 'me')]
    public function me()
    {
        die("Allez.");
    }

    #[Route('/collections/{id}', name: 'lego')]
    public function lego(legoCollection $legoCollection, LegoCollection $collection,LegoCollectionRepository $legoCollectionRepository): Response
    {
        if ($collection->getIsPremium() && !$this->isGranted('ROLE_USER')) {
            throw $this->createAccessDeniedException('You do not have access to this collection.');
        }

        $legos = $legoCollection->getLegos( $collection);
        $collections = $legoCollectionRepository->findAll();
        return $this->render('lego.html.twig', [
            'legos' => $legos,
            'collections' => $collections,
        ]);
    }
}
