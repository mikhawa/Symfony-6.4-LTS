<?php

namespace App\Entity;

use App\Repository\ArticleRepository;
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
        options: ['unsigned' => true])]
    private ?int $id = null;

    #[ORM\Column(length: 160)]
    private ?string $ArticleTitle = null;

    #[ORM\Column(length: 165)]
    private ?string $ArticleSlug = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $ArticleContent = null;

    #[ORM\Column(type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $ArticleDateCreate = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $ArticleDateUpdate = null;

    #[ORM\Column]
    private ?bool $ArticleIsPublished = null;

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
}
