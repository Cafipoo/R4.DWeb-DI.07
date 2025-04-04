<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20250404063155 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE brick ADD collection_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE brick ADD CONSTRAINT FK_3750CB3C514956FD FOREIGN KEY (collection_id) REFERENCES brick_collection (id)');
        $this->addSql('CREATE INDEX IDX_3750CB3C514956FD ON brick (collection_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE brick DROP FOREIGN KEY FK_3750CB3C514956FD');
        $this->addSql('DROP INDEX IDX_3750CB3C514956FD ON brick');
        $this->addSql('ALTER TABLE brick DROP collection_id');
    }
}
