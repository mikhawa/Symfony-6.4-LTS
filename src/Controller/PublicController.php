<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class PublicController extends AbstractController
{
    #[Route('/', name: 'public_accueil')]
    public function index(): Response
    {
        return $this->render('public/index.html.twig', [
            'controller_name' => 'PublicController',
        ]);
    }
    public function contact(): Response
    {
        // Nous allons envoyer une réponse de type texte en utilisant la classe Response (html basique)
        return new Response('<body><h1>Page de contact</h1><a href="./">Retour à l\'accueil</a></body>');
    }
    #[Route('/article/{id}', name: 'public_article')]
    public function article($id): Response
    {
        // Nous allons envoyer une réponse de type texte en utilisant
        // la classe Response en utilisant la variable $id
        return new Response("<body><h1>Page de l'article dont l'id est $id</h1>
        <a href='../'>Retour à l'accueil</a></body>");
    }
    #[Route('/articleType/{id<\d+>}', name: 'public_article_type',methods: ['GET'])]
    public function articleType(int $id): Response
    {
        // Nous allons envoyer une réponse de type texte en utilisant la classe Response en utilisant
        // la variable $id
        return new Response("<body><h1>Page de l'article Typée en int dont l'id est $id</h1>
        <p>Ne fonctionne qu'avec une variable GET de type numérique !</p><a href='../../'>Retour à l'accueil</a></body>");
    }
    #[Route('/articleTypeDefault/{id<\d+>}',
        name: 'public_article_type_default',
        defaults: ['id' => 1],
        methods: ['GET'])]
    public function articleTypeDefault(int $id): Response
    {
        // Nous allons envoyer une réponse de type texte en utilisant la classe Response en utilisant
        // la variable $id
        return new Response("<body><h1>Page de l'article Typée avec valeur par défaut en int dont l'id est $id</h1>
        <p>Ne fonctionne qu'avec une variable GET de type numérique !<br>
        La valeur par défaut est 1</p><a href='../../'>Retour à l'accueil</a></body>");
    }
}
