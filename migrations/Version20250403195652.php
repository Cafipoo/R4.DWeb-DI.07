<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20250403195652 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE lego CHANGE id id INT AUTO_INCREMENT NOT NULL, CHANGE name name VARCHAR(255) NOT NULL, CHANGE description description LONGTEXT NOT NULL, CHANGE imagebox imagebox VARCHAR(255) NOT NULL, CHANGE imagebg imagebg VARCHAR(255) NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE lego CHANGE id id INT NOT NULL, CHANGE name name VARCHAR(256) NOT NULL, CHANGE description description TEXT NOT NULL, CHANGE imagebox imagebox VARCHAR(256) NOT NULL, CHANGE imagebg imagebg VARCHAR(256) NOT NULL');
    }
}
