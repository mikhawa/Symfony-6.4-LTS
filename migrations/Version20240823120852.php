<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240823120852 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE commentaire (id INT UNSIGNED AUTO_INCREMENT NOT NULL, commentaire_many_to_one_article_id INT UNSIGNED DEFAULT NULL, commentaire_title VARCHAR(120) NOT NULL, commentaire_text VARCHAR(800) NOT NULL, commentaire_date_create DATETIME DEFAULT CURRENT_TIMESTAMP, commentaire_is_published TINYINT(1) DEFAULT 0 NOT NULL, INDEX IDX_67F068BC7698D20 (commentaire_many_to_one_article_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE commentaire ADD CONSTRAINT FK_67F068BC7698D20 FOREIGN KEY (commentaire_many_to_one_article_id) REFERENCES article (id)');
        $this->addSql('ALTER TABLE article CHANGE article_date_create article_date_create DATETIME DEFAULT CURRENT_TIMESTAMP, CHANGE article_date_update article_date_update DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE commentaire DROP FOREIGN KEY FK_67F068BC7698D20');
        $this->addSql('DROP TABLE commentaire');
        $this->addSql('ALTER TABLE article CHANGE article_date_create article_date_create DATE DEFAULT NULL, CHANGE article_date_update article_date_update DATETIME DEFAULT NULL');
    }
}
