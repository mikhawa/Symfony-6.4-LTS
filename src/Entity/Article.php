<?php

namespace App\Entity;

use App\Repository\ArticleRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ArticleRepository::class)]
class Article
{
    // Pour que l'id soit unsigned, il faut ajouter l'option "unsigned: true"
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(
        type: Types::INTEGER,
        options: ['unsigned' => true])
    ]
    private ?int $id = null;

    #[ORM\Column(length: 160)]
    private ?string $ArticleTitle = null;

    #[ORM\Column(length: 165)]
    private ?string $ArticleSlug = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $ArticleContent = null;

    // pour que la date actuelle soit insérée automatiquement lors de la création
    #[ORM\Column(
        type: Types::DATETIME_MUTABLE,
        nullable: true,
        options: ["default" => "CURRENT_TIMESTAMP"]
    )
    ]
    private ?\DateTimeInterface $ArticleDateCreate = null;

    // pour que la date actuelle soit insérée automatiquement lors de la mise à jour
    #[ORM\Column(
        columnDefinition: 'DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP'
        )
    ]
    private ?\DateTimeInterface $ArticleDateUpdate = null;

    // pour que la valeur par défaut soit false
    #[ORM\Column(
        type: Types::BOOLEAN,
        options: ["default" => false]
    )
    ]
    private ?bool $ArticleIsPublished = null;

    /**
     * @var Collection<int, Commentaire>
     */
    #[ORM\OneToMany(targetEntity: Commentaire::class, mappedBy: 'CommentaireManyToOneArticle')]
    private Collection $commentaires;

    /**
     * @var Collection<int, Categorie>
     */
    #[ORM\ManyToMany(targetEntity: Categorie::class, mappedBy: 'CategorieHasArticle')]
    private Collection $categories;

    public function __construct()
    {
        $this->commentaires = new ArrayCollection();
        $this->categories = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getArticleTitle(): ?string
    {
        return $this->ArticleTitle;
    }

    public function setArticleTitle(string $ArticleTitle): static
    {
        $this->ArticleTitle = $ArticleTitle;

        return $this;
    }

    public function getArticleSlug(): ?string
    {
        return $this->ArticleSlug;
    }

    public function setArticleSlug(string $ArticleSlug): static
    {
        $this->ArticleSlug = $ArticleSlug;

        return $this;
    }

    public function getArticleContent(): ?string
    {
        return $this->ArticleContent;
    }

    public function setArticleContent(string $ArticleContent): static
    {
        $this->ArticleContent = $ArticleContent;

        return $this;
    }

    public function getArticleDateCreate(): ?\DateTimeInterface
    {
        return $this->ArticleDateCreate;
    }

    public function setArticleDateCreate(?\DateTimeInterface $ArticleDateCreate): static
    {
        $this->ArticleDateCreate = $ArticleDateCreate;

        return $this;
    }

    public function getArticleDateUpdate(): ?\DateTimeInterface
    {
        return $this->ArticleDateUpdate;
    }

    public function setArticleDateUpdate(?\DateTimeInterface $ArticleDateUpdate): static
    {
        $this->ArticleDateUpdate = $ArticleDateUpdate;

        return $this;
    }

    public function isArticleIsPublished(): ?bool
    {
        return $this->ArticleIsPublished;
    }

    public function setArticleIsPublished(bool $ArticleIsPublished): static
    {
        $this->ArticleIsPublished = $ArticleIsPublished;

        return $this;
    }

    /**
     * @return Collection<int, Commentaire>
     */
    public function getCommentaires(): Collection
    {
        return $this->commentaires;
    }

    public function addCommentaire(Commentaire $commentaire): static
    {
        if (!$this->commentaires->contains($commentaire)) {
            $this->commentaires->add($commentaire);
            $commentaire->setCommentaireManyToOneArticle($this);
        }

        return $this;
    }

    public function removeCommentaire(Commentaire $commentaire): static
    {
        if ($this->commentaires->removeElement($commentaire)) {
            // set the owning side to null (unless already changed)
            if ($commentaire->getCommentaireManyToOneArticle() === $this) {
                $commentaire->setCommentaireManyToOneArticle(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Categorie>
     */
    public function getCategories(): Collection
    {
        return $this->categories;
    }

    public function addCategory(Categorie $category): static
    {
        if (!$this->categories->contains($category)) {
            $this->categories->add($category);
            $category->addCategorieHasArticle($this);
        }

        return $this;
    }

    public function removeCategory(Categorie $category): static
    {
        if ($this->categories->removeElement($category)) {
            $category->removeCategorieHasArticle($this);
        }

        return $this;
    }
}
