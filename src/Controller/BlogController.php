<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
# Importation de la classe Response
use Symfony\Component\HttpFoundation\Response;
# Importation de la classe Request
use Symfony\Component\HttpFoundation\Request;
# Importation de la classe Route
use Symfony\Component\Routing\Attribute\Route;
# Appel de l'ORM Doctrine
use Doctrine\ORM\EntityManagerInterface;
# Importation de l'entité Categorie
use App\Entity\Categorie;


class BlogController extends AbstractController
{
    #[Route('/', name: 'homepage')]
    public function index(EntityManagerInterface $entityManager): Response
    {
        // récupération de toutes les catégories
        $categories = $entityManager->getRepository(Categorie::class)->findAll();
        return $this->render('blog/index.html.twig', [
            // on envoie les catégories à la vue
            'categories' => $categories,
        ]);
    }
}
