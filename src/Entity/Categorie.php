<?php

namespace App\Entity;

use App\Repository\CategorieRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CategorieRepository::class)]
class Categorie
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(
        type: Types::INTEGER,
        options: ['unsigned' => true])
    ]
    private ?int $id = null;

    #[ORM\Column(length: 160)]
    private ?string $CategorieTitle = null;

    #[ORM\Column(length: 165)]
    private ?string $CategorieSlug = null;

    #[ORM\Column(length: 500, nullable: true)]
    private ?string $CategorieDesc = null;

    /**
     * @var Collection<int, Article>
     */
    #[ORM\ManyToMany(targetEntity: Article::class, inversedBy: 'categories')]
    private Collection $CategorieHasArticle;

    public function __construct()
    {
        $this->CategorieHasArticle = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCategorieTitle(): ?string
    {
        return $this->CategorieTitle;
    }

    public function setCategorieTitle(string $CategorieTitle): static
    {
        $this->CategorieTitle = $CategorieTitle;

        return $this;
    }

    public function getCategorieSlug(): ?string
    {
        return $this->CategorieSlug;
    }

    public function setCategorieSlug(string $CategorieSlug): static
    {
        $this->CategorieSlug = $CategorieSlug;

        return $this;
    }

    public function getCategorieDesc(): ?string
    {
        return $this->CategorieDesc;
    }

    public function setCategorieDesc(?string $CategorieDesc): static
    {
        $this->CategorieDesc = $CategorieDesc;

        return $this;
    }

    /**
     * @return Collection<int, Article>
     */
    public function getCategorieHasArticle(): Collection
    {
        return $this->CategorieHasArticle;
    }

    public function addCategorieHasArticle(Article $categorieHasArticle): static
    {
        if (!$this->CategorieHasArticle->contains($categorieHasArticle)) {
            $this->CategorieHasArticle->add($categorieHasArticle);
        }

        return $this;
    }

    public function removeCategorieHasArticle(Article $categorieHasArticle): static
    {
        $this->CategorieHasArticle->removeElement($categorieHasArticle);

        return $this;
    }
}
