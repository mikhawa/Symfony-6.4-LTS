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
# 4. Importer le générateur de texte Faker
use Faker\Factory;
# 5. Importer le slugger
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
            $article->setArticleContent($faker->paragraphs(3,true));
            $article->setArticleSlug($slugify->slugify($title));
            $article->setArticleDateCreate(new \DateTime());
            $article->setArticleIsPublished(true);
            // on tire au sort la clef d'un utilisateur pour l'article
            $keyUser=array_rand($randUser);
            // on récupère l'utilisateur correspondant
            $oneUser = $randUser[$keyUser];
            // on ajoute l'article à la liste des articles de l'utilisateur
            $article->setUtilisateur($oneUser);

            $manager->persist($article);
        }
        // on exécute les requêtes de persistance
        $manager->flush();
    }
}