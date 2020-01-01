<?php

namespace App\Controller;

//use App\Entity\Image;
use App\Entity\Product;
use App\Form\ProductType;
use App\Repository\ProductRepository;
//use Symfony\Component\HttpFoundation\Session\SessionInterface;
// OBSOLETE depuis doctrine-bundle v2.0.0 : use Doctrine\Common\Persistence\ObjectManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ProductController extends AbstractController
{
    /**
     * @author BAZILE-OCTUVON Kenny <kennybazileoctuvon@gmail.com>
     * 
     * Permet de générer la page Produits
     * 
     * @Route("/products", name="products_index")
     */
    public function index(ProductRepository $repo)
    {
        $products = $repo->findAll();

        return $this->render('product/index.html.twig', [
            'products' => $products,
        ]);
    }
    
    /**
     * @author BAZILE-OCTUVON Kenny <kennybazileoctuvon@gmail.com>
     * 
     * Permet de créer une fiche produit
     * 
     * @Route("/products/new", name="products_create")
     * @IsGranted("ROLE_ADMIN")
     * 
     * @return Response
     */
    public function create(Request $request, EntityManagerInterface $manager){
        $product = new Product();

        $form = $this->createForm(ProductType::class, $product);
 
        $form->handleRequest($request);


        if($form->isSubmitted() && $form->isValid()){
            foreach($product->getImages() as $image){
                $image->setProduct($product);
                $manager->persist($image);
            }

            $manager->persist($product);
            $manager->flush();

        $this->addFlash(
            'success',
            "La fiche <strong>{$product->getName()}</strong> a bien été enregistrée !"
            );
    
            
            return $this -> redirectToRoute('products_show',[
                'slug' => $product -> getSlug()
            ]);
        }

        dump($product);

        return $this->render('product/new.html.twig',[
            'form' => $form->createView()
        ]);
    }

    /**
     * @author BAZILE-OCTUVON Kenny <kennybazileoctuvon@gmail.com>
     * 
     * Permet d'afficher le formulaire de modification
     * 
     * @Route("/products/{slug}/edit", name="products_edit")
     * @IsGranted("ROLE_ADMIN")
     * 
     * @return Response
     */

    public function edit(Product $product, Request $request,EntityManagerInterface $manager){
        $form = $this->createForm(ProductType::class, $product);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            foreach($product->getImages() as $image){
                $image->setProduct($product);
                $manager->persist($image);
            }

            $manager->persist($product);
            $manager->flush();

        $this->addFlash(
            'success',
            "Les modifications de la fiche <strong>{$product->getName()}</strong> ont bien été enregistrées !"
            );
    
            
            return $this -> redirectToRoute('products_show',[
                'slug' => $product -> getSlug()
            ]);
        }

        return $this -> render('product/edit.html.twig',[
            'form'=>$form->createView(),
            'product'=> $product
        ]);
    }

   /**
    * @author BAZILE-OCTUVON Kenny <kennybazileoctuvon@gmail.com>
    * 
    * Permet d'afficher une seule annonce
    * On récupère la fiche qui correspond au slug du produit "product" par type hinting (ParamConverter sous-entendu)
    * 
    * @Route("/products/{slug}", name="products_show")
    * 
    * @return Response
    */
    public function show(Product $product){
        // $product = $repo -> findOneBySlug($slug);
        return $this->render('product/show.html.twig', [
            'product' => $product
        ]);
    }

}
