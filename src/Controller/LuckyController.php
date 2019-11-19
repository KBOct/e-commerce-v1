<?php
// src/AppBundle/Controller/LuckyController.php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use App\Entity\Product;

class LuckyController extends Controller
{
    /**
     * @Route("/lucky/number")
     */
    public function numberAction()
    {
        $number = random_int(0, 100);
        $em = $this->getDoctrine()->getManager();
        
        $em->getRepository(Product::class);
        
        $produit=new Product();
        $em->persist($produit);
        $em->flush();
        
        $product2=$em->getRepository(Product::class)->findOneById(2);
        $product2->setDescription("ceci est le produit numéro 2");
        $em->flush();
        
/*        $product3=$em->getRepository(Product::class)->findOneById(1);
        $em->remove($product3);
        $em->flush();*/
        
        
        
        
        
        
        
        
        
        
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
    
}