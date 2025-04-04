<?php

namespace App\Entity;

use App\Repository\BrickCollectionRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: BrickCollectionRepository::class)]
class BrickCollection
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $collection_name = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function setId(int $id): static
    {
        $this->id = $id;

        return $this;
    }

    public function getCollectionName(): ?string
    {
        return $this->collection_name;
    }

    public function setCollectionName(string $collection_name): static
    {
        $this->collection_name = $collection_name;

        return $this;
    }
}
