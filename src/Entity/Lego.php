<?php

namespace App\Entity;

use App\Repository\LegoRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: LegoRepository::class)]
class Lego
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $description = null;

    #[ORM\Column]
    private ?float $price = null;

    #[ORM\Column]
    private ?int $pieces = null;

    #[ORM\Column(length: 255, name: 'imagebox')]
    private ?string $imageBox = null;

    #[ORM\Column(length: 255, name: 'imagebg')]
    private ?string $imageBg = null;

    #[ORM\ManyToOne]
    private ?LegoCollection $collection = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getPrice(): ?float
    {
        return $this->price;
    }

    public function setPrice(float $price): static
    {
        $this->price = $price;

        return $this;
    }

    public function getPieces(): ?int
    {
        return $this->pieces;
    }

    public function setPieces(int $pieces): static
    {
        $this->pieces = $pieces;

        return $this;
    }

    public function getImageBox(): ?string
    {
        return $this->imageBox;
    }

    public function setImageBox(string $imageBox): static
    {
        $this->imageBox = $imageBox;

        return $this;
    }

    public function getImageBg(): ?string
    {
        return $this->imageBg;
    }

    public function setImageBg(string $imageBg): static
    {
        $this->imageBg = $imageBg;

        return $this;
    }

    public function getCollection(): ?LegoCollection
    {
        return $this->collection;
    }

    public function setCollection(?LegoCollection $collection): static
    {
        $this->collection = $collection;

        return $this;
    }



}
