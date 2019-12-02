<?php
// src/AppBundle/Controller/TestController.php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use App\Entity\Product;

class LoginSuccessController extends Controller
{
    /**
     * @Route("/login/success")
     */
    public function loginSuccessAction()
    {
      
      return new Response('Hello '.$this->getUser()->getLogin());

    }
}
