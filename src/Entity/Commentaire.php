<?php

namespace App\Entity;

use App\Repository\CommentaireRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CommentaireRepository::class)]
class Commentaire
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(
        type: Types::INTEGER,
        options: ['unsigned' => true])
    ]
    private ?int $id = null;

    #[ORM\Column(length: 120)]
    private ?string $CommentaireTitle = null;

    #[ORM\Column(length: 800)]
    private ?string $CommentaireText = null;

    // Pour que la date actuelle soit insérée automatiquement
    #[ORM\Column(
        type: Types::DATETIME_MUTABLE,
        nullable: true,
        options: ['default' => 'CURRENT_TIMESTAMP']
        )
    ]
    private ?\DateTimeInterface $CommentaireDateCreate = null;

    #[ORM\ManyToOne(inversedBy: 'commentaires')]
    private ?Article $CommentaireManyToOneArticle = null;

    // pour que la valeur par défaut soit false
    #[ORM\Column(
        type: Types::BOOLEAN,
        options: ["default" => false]
    )
    ]
    private ?bool $CommentaireIsPublished = null;

    #[ORM\ManyToOne(inversedBy: 'commentaires')]
    private ?Utilisateur $utilisateur = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCommentaireTitle(): ?string
    {
        return $this->CommentaireTitle;
    }

    public function setCommentaireTitle(string $CommentaireTitle): static
    {
        $this->CommentaireTitle = $CommentaireTitle;

        return $this;
    }

    public function getCommentaireText(): ?string
    {
        return $this->CommentaireText;
    }

    public function setCommentaireText(string $CommentaireText): static
    {
        $this->CommentaireText = $CommentaireText;

        return $this;
    }

    public function getCommentaireDateCreate(): ?\DateTimeInterface
    {
        return $this->CommentaireDateCreate;
    }

    public function setCommentaireDateCreate(?\DateTimeInterface $CommentaireDateCreate): static
    {
        $this->CommentaireDateCreate = $CommentaireDateCreate;

        return $this;
    }

    public function getCommentaireManyToOneArticle(): ?Article
    {
        return $this->CommentaireManyToOneArticle;
    }

    public function setCommentaireManyToOneArticle(?Article $CommentaireManyToOneArticle): static
    {
        $this->CommentaireManyToOneArticle = $CommentaireManyToOneArticle;

        return $this;
    }

    public function isCommentaireIsPublished(): ?bool
    {
        return $this->CommentaireIsPublished;
    }

    public function setCommentaireIsPublished(bool $CommentaireIsPublished): static
    {
        $this->CommentaireIsPublished = $CommentaireIsPublished;

        return $this;
    }

    public function getUtilisateur(): ?Utilisateur
    {
        return $this->utilisateur;
    }

    public function setUtilisateur(?Utilisateur $utilisateur): static
    {
        $this->utilisateur = $utilisateur;

        return $this;
    }
}
