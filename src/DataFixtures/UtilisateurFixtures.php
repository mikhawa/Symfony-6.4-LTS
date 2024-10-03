<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
# 1. Importer l'entité Utilisateur
use App\Entity\Utilisateur;
# 2. Importer le gestionnaire de mot de passe
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class UtilisateurFixtures extends Fixture
{
    private UserPasswordHasherInterface $passwordEncoder;

    public function __construct(UserPasswordHasherInterface $passwordEncoder)
    {
        $this->passwordEncoder = $passwordEncoder;
    }

    public function load(ObjectManager $manager): void
    {
        $user = new Utilisateur();
        $user->setName('Dupont');
        $user->setEmail('dupont@dupont.com');
        $password = $this->passwordEncoder->hashPassword($user,'123456');
        $user->setPassword($password);

        $manager->persist($user);

        $manager->flush();
    }
}
