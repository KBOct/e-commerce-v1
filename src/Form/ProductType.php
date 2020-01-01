<?php

namespace App\Form;

use App\Entity\Tag;
use App\Entity\Product;
use App\Form\ImageType;
use App\Entity\Category;
use App\Form\ApplicationType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
//use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
//use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;

class ProductType extends ApplicationType
{
    // Refactorisation de la méthode getConfiguration dans ApplicationType

    /**
     * @author BAZILE-OCTUVON Kenny <kennybazileoctuvon@gmail.com>
     * 
     * Permet de créer une nouvelle fiche produit
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class, $this->getConfiguration("Nom", "Entrer le nom du produit"))
            ->add('slug', TextType::class, $this->getConfiguration("Extension URL", "Adresse URL relative (automatique)",[
                'required' => false
                ])
            )
            ->add('photo', UrlType::class,$this->getConfiguration("Photo", "URL de l'image prinicipale du produit"))
            ->add('introduction',TextType::class, $this->getConfiguration("Introduction", "Description brève du produit"))
            ->add('description', TextareaType::class, $this->getConfiguration("Description", "Description détaillée du produit"))
            ->add('price', MoneyType::class, $this->getConfiguration("Prix", "Prix du produit (TTC)"))
            ->add('quantity', IntegerType::class, $this->getConfiguration("Quantité", "Nombre d'unités du produit en stock"))

            ->add('isDeleted', ChoiceType::class,[
                'label' => "Produit supprimé",
                'choices' => ['Oui' => true, 'Non' => false],
                ])

            //->add('categories', TextType::class, $this->getConfiguration("Catégorie", "Catégorie du produit"))
            
            ->add('categories', TextType::class,[
                'label'=> "Catégorie",
                'mapped' => false,
                'attr' => [
                    'placeholder' => "Catégorie du produit"
                ]
            ])


            // ...
            
            // ->add('categories', EntityType::class, [
            //     'class' => Category::class,
            //     'choice_label' => 'categories',
            //     // 'choice_label' => $group->getCategories(),
            // ])


            
            //->add('tags', TextType::class, $this->getConfiguration("Mots-clé", "Mots-clé associés au produit"));
            
            ->add('tags', TextType::class,[
                'label'=> "Mots-clé",
                'mapped' => false,
                'attr' => [
                    'placeholder' => "Mots-clé associés au produit"
                ]
            ])

            // ->add('tags', EntityType::class, [
            //     'class' => Tag::class,
            //     'choice_label' => 'tags',
            //     // 'choice_label' => $group->getCategories(),
            // ])

            ->add(
                'images', 
                CollectionType::class, [
                    'entry_type' => ImageType::class,
                    'allow_add' => true,
                    'allow_delete' => true
                ]
            )
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Product::class,
        ]);
    }
}
