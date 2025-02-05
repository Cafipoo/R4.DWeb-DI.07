<?php

namespace App\Service;

use App\Entity\Lego;
use \PDO;

class LegoService
{
    private PDO $pdo;
    public function __construct()
    {
        $host = "mysql:host=tp-symfony-mysql;dbname=lego_store";
        $user = "root";
        $password = "root";
        $option = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        ];
        $this->pdo = new PDO($host, $user, $password, $option);
    }
    public function getLegos()
    {
        $stat = $this->pdo->prepare("SELECT * FROM lego");
        $stat->execute();
        $legos = [];
        while ($res = $stat->fetch(PDO::FETCH_ASSOC)) {
            $lego = new Lego($res['id'], $res['name'], $res['collection']);
            $lego->setDescription($res['description']);
            $lego->setPrice($res['price']);
            $lego->setPieces($res['pieces']);
            $lego->setBoxImage($res['imagebox']);
            $lego->setLegoImage($res['imagebg']);
            $legos[] = $lego;
        }
        return $legos;
    }
    public function getLegosByCollection($item){
        {
            if ($item == 'star_wars') {
                $item = 'Star Wars';
            }
            else if ($item == 'creator') {
                $item = 'Creator';
            }
            else if ($item == 'creator_expert') {
                $item = 'Creator Expert';
            }
            
            $stat = $this->pdo->prepare("SELECT * FROM lego WHERE collection = '$item'");
            $stat->execute();
            $legoCollection = [];
            while ($res = $stat->fetch(PDO::FETCH_ASSOC)) {
                $lego = new Lego($res['id'], $res['name'], $res['collection']);
                $lego->setDescription($res['description']);
                $lego->setPrice($res['price']);
                $lego->setPieces($res['pieces']);
                $lego->setBoxImage($res['imagebox']);
                $lego->setLegoImage($res['imagebg']);
                $legoCollection[] = $lego;
            }
            return $legoCollection;
        }

    }
}