<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
# 1. Importer l'entité Utilisateur
use App\Entity\Utilisateur;
# 2. Importer le gestionnaire de mot de passe
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
# 3. Importer l'entité Article
use App\Entity\Article;
# 4. Importer l'entité Commentaire
use App\Entity\Commentaire;
# 5. Importer l'entité Catégorie
use App\Entity\Categorie;
# 6. Importer le générateur de texte Faker
use Faker\Factory;
# 7. Importer le slugger
use Cocur\Slugify\Slugify;

class AllFixtures extends Fixture
{
    private UserPasswordHasherInterface $passwordEncoder;

    public function __construct(UserPasswordHasherInterface $passwordEncoder)
    {
        $this->passwordEncoder = $passwordEncoder;
    }
    public function load(ObjectManager $manager): void
    {
        // création de 10 utilisateurs
        for($i=0;$i<10;$i++) {
            $user = new Utilisateur();
            $user->setName('Dupont' . $i);
            $user->setEmail("dupont$i@dupont.com");
            // on encode le mot de passe
            $password = $this->passwordEncoder->hashPassword($user, "123456$i");
            $user->setPassword($password);
            // on l'ajoute à la liste des utilisateurs pour les articles
            $randUser[] = $user;

            // on garde la requête de persistance pour la fin
            $manager->persist($user);
        }
        // instanciation du générateur de Faker en français
        $faker = Factory::create('fr_FR');
        // instanciation du slugger
        $slugify = new Slugify();

        // création de 30 articles
        for($i=0;$i<30;$i++) {
            $article = new Article();
            $title = $faker->sentence(5,true);
            $article->setArticleTitle($title);
            $article->setArticleContent($faker->paragraphs(mt_rand(3,5),true));
            $article->setArticleSlug($slugify->slugify($title));
            $article->setArticleDateCreate(new \DateTime());
            $article->setArticleIsPublished(true);
            // on tire au sort la clef d'un utilisateur pour l'article
            $keyUser=array_rand($randUser);
            // on récupère l'utilisateur correspondant
            $oneUser = $randUser[$keyUser];
            // on ajoute l'article à la liste des articles de l'utilisateur
            $article->setUtilisateur($oneUser);
            // on l'ajoute à la liste des articles pour les commentaires
            $randArticle[] = $article;

            $manager->persist($article);
        }
        ###

// création de 100 commentaires
        for($i=0;$i<100;$i++) {
            $comment = new Commentaire();
            $comment->setCommentaireTitle($faker->words(mt_rand(2,3),true));
            $comment->setCommentaireText($faker->sentences(mt_rand(1,2),true));
            $comment->setCommentaireDateCreate(new \DateTime());
            $comment->setCommentaireIsPublished(true);
            // on tire au sort la clef d'un utilisateur pour le commentaire
            $keyUser=array_rand($randUser);
            // on récupère l'utilisateur correspondant
            $oneUser = $randUser[$keyUser];
            // on ajoute le commentaire à la liste des commentaires de l'utilisateur
            $comment->setUtilisateur($oneUser);
            // on tire au sort la clef d'un article pour le commentaire
            $keyArticle=array_rand($randArticle);
            // on récupère l'article correspondant
            $oneArticle = $randArticle[$keyArticle];
            // on ajoute le commentaire à la liste des commentaires de l'article
            $comment->setCommentaireManyToOneArticle($oneArticle);

            $manager->persist($comment);
        }

        // création de 5 catégories
        for($i=0;$i<5;$i++) {
            $category = new Categorie();
            $nameCategory = $faker->words(mt_rand(1,2),true);
            $category->setCategorieTitle($nameCategory);
            $category->setCategorieSlug($slugify->slugify($nameCategory));
            $category->setCategorieDesc($faker->sentences(mt_rand(1,2),true));

            // on va donner la catégorie à 35 articles au hasard
            for($j=0;$j<35;$j++) {
                // on tire au sort la clef d'un article pour la catégorie
                $keyArticle=array_rand($randArticle);
                // on récupère l'article correspondant
                $oneArticle = $randArticle[$keyArticle];
                // on ajoute la catégorie à la liste des catégories de l'article
                $category->addCategorieHasArticle($oneArticle);
            }

            $manager->persist($category);
        }


        // on exécute les requêtes de persistance
        $manager->flush();
    }
}