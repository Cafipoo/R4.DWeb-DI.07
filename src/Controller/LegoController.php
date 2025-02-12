<?php

/* indique où "vit" ce fichier */
namespace App\Controller;
/* indique l'utilisation du bon bundle pour gérer nos routes */
use App\Entity\Lego;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Repository\LegoRepository;
use App\Service\LegoService;
/* le nom de la classe doit être cohérent avec le nom du fichier */
class LegoController extends AbstractController
{
    // L'attribute #[Route] indique ici que l'on associe la route
    // "/" à la méthode home() pour que Symfony l'exécute chaque fois
    // que l'on accède à la racine de notre site.

    #[Route('/', name: 'home')]
    // public function home() :Response
    // {
    //     // return new Response("<h1>Salut les gens !</h1>");
    //     $msg = "Alleeeez !";
    //     return $this->render('test.html.twig', [
    //         'msg' => $msg,
    //     ]);
    // }
    public function home(LegoRepository $legoRepository): Response
    {
        $legos = $legoRepository->findAll();
        $output = '';
        foreach ($legos as $lego) {
            $output .= $this->renderView('lego.html.twig', [
            'lego' => $lego,
            ]);
        }
        return new Response($output);
    }
    #[Route('/me', name: 'me')]
    public function me()
    {
        die("Allez.");
    }


    #[Route('/{collection}', name: 'lego')]
    public function lego(LegoRepository $legoRepository, $collection)
    {
        if ($collection == 'star_wars') {
            $collection = 'Star Wars';
        }
        else if ($collection == 'creator') {
            $collection = 'Creator';
        }
        else if ($collection == 'creator_expert') {
            $collection = 'Creator Expert';
        }
        $lego = $legoRepository->findOneByCat($collection);
        $output = '';
        foreach ($lego as $lego) {
            $output .= $this->renderView('lego.html.twig', [
            'lego' => $lego,
            ]);
        }
        return new Response($output);
    }
}
?>