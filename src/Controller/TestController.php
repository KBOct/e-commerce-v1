<?php

//namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

// class TestController extends Controller
// {
//     /**
//      * @Route("/test")
//      */
//     public function indexAction(Request $request)
//     {
// 		echo "Hello World!";
//         return new Response();
//         // replace this example code with whatever you need
// /*         return $this->render('default/index.html.twig', [
//             'base_dir' => realpath($this->getParameter('kernel.project_dir')).DIRECTORY_SEPARATOR,
//         ]);*/
//     }
// }

use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Routing\Annotation\Route;

class TestController extends Controller
{
     /**
      * @Route("/testform")
      */
      public function createAction(Request $request)
      {

        $formBuilder = $this->container->get('form.factory')->createBuilder();

          $formBuilder
            ->add(
                "username",
                TextType::class,
                array(
                  "label" => "Identifiant de l'utilisateur",
                )
              )

            ->add(
                "email",
                EmailType::class,
                array(
                  "label" => "Adresse mail",
                )
              )

        $formBuilder->getForm();

        $form = $formBuilder->getForm();

        $form->handleRequest($request)

        if($form->isSubmitted() && $form->isValid()){
          $data = $form->getData();

          // process

          return $this->redirectToRoute('create_success');
        }
        return $this->render(
          'test/form.html.twig',
            array(
              'form'=>$form->createView(),
            )
          );
      }
}
