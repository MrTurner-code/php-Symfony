<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Entity\Instrument;

class AppController extends AbstractController {

    public function home() {
        return $this->render('app/home.html.twig');
    }

    public function contact() {
        return $this->render('app/contact.html.twig');
    }

    public function products() {
        $em = $this->getDoctrine()->getManager();
        $instruments = $em->getRepository(Instrument::class)->findAll();
        return $this->render('app/products.html.twig', [
            'instruments' => $instruments
        ]);
    }

    public function product($id) {
        $em = $this->getDoctrine()->getManager();
        $instrument = $em->getRepository(Instrument::class)->find($id);
        return $this->render('app/product.html.twig', [
            'instrument' => $instrument
        ]);
    }

}
