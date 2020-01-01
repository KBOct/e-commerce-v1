$('#add-image').click(function(){
    // On compte le nombre de div.form-group pour en déduire l'indice du nouveau champ du sous-formulaire des images
    const index = +$('#widgets-counter').val();
    console.log(index);

    // On remplace "__name__" par la valeur de l'index (récupérée juste au-dessus) dans le code généré 
    //(prototype des entrées) lors du clic sur le bouton d'ajout d'image
    const tmpl = $('#product_images').data('prototype').replace(/__name__/g, index);

    // On injecte le code dans la section div
    $('#product_images').append(tmpl);

    // On incrémente le compteur de sous-formulaires
    $('#widgets-counter').val(index + 1);

    // Bouton supprimer (on appelle la fonction à chaque fois qu'on crée un nouveau formulaire)
    handleDeleteButtons();
});

// Cette fonction sert à supprimer les champs du sous-formulaire des images
// Ici "this" représente le bouton qui a déclenché l'évènement "click"
function handleDeleteButtons(){
    $('button[data-action="delete"]').click(function(){
        const target = this.dataset.target;
        $(target).remove();
    });
}

// Mise à jour du compteur pour éviter le bug qui apparaissait quand on supprimait une image 
//(deux images avaient l'index 0 et il n'y en avait qu'une seule en base de données)
function updateCounter(){
    const count = +$('#product_images div.form-group').length;
    $('#widgets-counter').val(count);
}

updateCounter();

// Bouton supprimer (on appelle la fonction à chaque fois qu'on recharge la page pour supprimer les images 
// déjà présentes lors de la modification d'une annonce)
handleDeleteButtons();