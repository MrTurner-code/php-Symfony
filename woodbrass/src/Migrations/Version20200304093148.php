<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200304093148 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE instruments ADD brand_id INT NOT NULL, ADD category_id INT NOT NULL');
        $this->addSql('ALTER TABLE instruments ADD CONSTRAINT FK_E350DE0B44F5D008 FOREIGN KEY (brand_id) REFERENCES brands (id)');
        $this->addSql('ALTER TABLE instruments ADD CONSTRAINT FK_E350DE0B12469DE2 FOREIGN KEY (category_id) REFERENCES categories (id)');
        $this->addSql('CREATE INDEX IDX_E350DE0B44F5D008 ON instruments (brand_id)');
        $this->addSql('CREATE INDEX IDX_E350DE0B12469DE2 ON instruments (category_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE instruments DROP FOREIGN KEY FK_E350DE0B44F5D008');
        $this->addSql('ALTER TABLE instruments DROP FOREIGN KEY FK_E350DE0B12469DE2');
        $this->addSql('DROP INDEX IDX_E350DE0B44F5D008 ON instruments');
        $this->addSql('DROP INDEX IDX_E350DE0B12469DE2 ON instruments');
        $this->addSql('ALTER TABLE instruments DROP brand_id, DROP category_id');
    }
}
