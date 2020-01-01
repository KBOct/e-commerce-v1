<?php

namespace App\Form;

use App\Entity\User;
use App\Form\ApplicationType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class RegistrationType extends ApplicationType
{
    // Refactorisation de la méthode getConfiguration dans ApplicationType

    /**
     * @author BAZILE-OCTUVON Kenny <kennybazileoctuvon@gmail.com>
     * 
     * Permet de créer le formulaire d'inscription au site
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            // ->add('roles')
            ->add('email', EmailType::class, $this->getConfiguration("Email", "Votre adresse email"))
            ->add('picture', UrlType::class, $this->getConfiguration("Photo de profil", "URL de votre avatar"))
            ->add('firstName', TextType::class, $this->getConfiguration("Prénom", "Votre prénom"))
            ->add('lastName', TextType::class, $this->getConfiguration("Nom", "Votre nom de famille"))
            ->add('deliveryAddress', TextType::class, $this->getConfiguration("Adresse de livraison", "Votre adresse de livraison"))
            ->add('billingAddress', TextType::class, $this->getConfiguration("Adresse de facturation", "Votre adresse de facturation"))
            ->add('password', PasswordType::class, $this->getConfiguration("Mot de passe", "Entrez un mot de passe difficile à deviner"))
            ->add('passwordConfirm', PasswordType::class, $this->getConfiguration("Confirmation de mot de passe", "Veuillez confirmer votre mot de passe"))
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
