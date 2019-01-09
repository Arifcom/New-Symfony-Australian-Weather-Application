<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use AppBundle\Entity\City;
use Doctrine\ORM\EntityManagerInterface;

/**
 * Description of City
 *
 * @author Arif Budiman
 */
class CityController extends Controller {
    /**
     * @Route("/city", name="city")
     */
    public function index() {
        $data       = $this->getDoctrine()->getRepository(City::class)->findAll();
        return $this->render('city/index.html.twig', ['data' => $data]);
    }
    
    /**
     * @Route("/city/detail", name="city_detail")
     */
    public function detail(Request $request)
    {
        $city       = $this->getDoctrine()->getRepository(City::class);
        $data       = $city->find($request->request->get('id'));
        $nearby_city= $city->findByState($data->state);
        if (in_array($data, $nearby_city)) 
        {
            unset($nearby_city[array_search($data,$nearby_city)]);
        }
        $request    = 'http://api.openweathermap.org/data/2.5/weather?q=' . $data->name . '&appid=610587cc5d3cb7ca56756c9642308387';
        $response   = file_get_contents($request);
        $json_object  = json_decode($response, true);
        return $this->render('city/detail.html.twig', ['data' => $data, 'nearby_city' => $nearby_city, 'json_object' => $json_object]);
    }
}
