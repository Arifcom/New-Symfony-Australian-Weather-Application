<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="city")
 */
class City {
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    public $id;
    
    /**
     * @ORM\Column(type="string", length=255)
     */
    public $state;

    /**
     * @ORM\Column(type="string", length=255)
     */
    public $name;

    /**
     * @ORM\Column(type="decimal", precision=6, scale=3)
     */
    public $latitude;

    /**
     * @ORM\Column(type="decimal", precision=6, scale=3)
     */
    public $longitude;
}
