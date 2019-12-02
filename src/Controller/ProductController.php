<?php
// src/Controller/ProductController.php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;

use App\Entity\Product;
use App\Entity\Category;


class ProductController extends Controller
{
    /**
     * @Route("/products/test")
     */

     // tous les produits

    public function getProductsTest()
    {
        $em = $this->getDoctrine()->getManager();

        $em->getRepository(Product::class);

        $produit=new Product();
        $em->persist($produit);
        $em->flush();

        $product2=$em->getRepository(Product::class)->findOneById(2);
        $product2->setDescription("ceci est le produit numéro 2");
        $em->flush();

        $products=$em->getRepository(Product::class)->findAll();
        $result=array();

        foreach($products as $product){
            $result[]= array(
                "id" => $product->getId(),
                "description" => $product->getDescription(),
                "quantity" => $product->getQuantity(),
                "is_deleted" => $product->getIsDeleted(),
            );

        }

        return $this->json($result);
    }

    /**
     * @Route("/products")
     */

    public function getProducts()
    {
        $em = $this->getDoctrine()->getManager();

        $em->getRepository(Product::class);

        $produit=new Product();
        $em->persist($produit);
        $em->flush();

        $products=$em->getRepository(Product::class)->findAll();
        $result=array();

        foreach($products as $product){
            $result[]= array(
                "id" => $product->getId(),
                "description" => $product->getDescription(),
                "quantity" => $product->getQuantity(),
                "is_deleted" => $product->getIsDeleted(),
            );

        }

        return $this->json($result);
    }

     // un produit par id

     /**
      * @Route("/product/{id}")
      */

        public function getProductById(int $id)
        {
            $em = $this->getDoctrine()->getManager();
            $product=$em->getRepository(Product::class)->findOneById($id);

                $result= array(
                    "id" => $product->getId(),
                    "description" => $product->getDescription(),
                    "quantity" => $product->getQuantity(),
                    "is_deleted" => $product->getIsDeleted(),
                );


            return $this->json($result);
        }

     // tous les produits d'une cat

     /**
      * @Route("/products/{id}")
      */

     public function getProductsByCategory(int $id)
     {
         $em = $this->getDoctrine()->getManager();
         $em->getRepository(Product::class);
         $category=$em->getRepository(Category::class)->findOneById($id);
         $products=$em->getRepository(Product::class)->findByCategory($category);
         $result=array();

         foreach($products as $product){
             $result[]= array(
                 "id" => $product->getId(),
                 "description" => $product->getDescription(),
                 "quantity" => $product->getQuantity(),
                 "is_deleted" => $product->getIsDeleted(),
             );

         }

         return $this->json($result);
     }
}
