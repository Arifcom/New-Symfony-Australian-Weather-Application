<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace AppBundle\Controller;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Description of City
 *
 * @author Arif Budiman
 */
class City extends Controller {
    /**
     * @Route("/City")
     */
    public function index() {
        return $this->render('city/index.html.twig');
    }
}
