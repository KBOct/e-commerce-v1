import React from "react";

const HomePage = props => {
  return (
    <div className="jumbotron">
      <h1 className="display-3">Bienvenue sur e-com paradise</h1>
      <p className="lead">
      Tous les produits dont vous avez besoin à portée de main. Cliquez, c'est emballé !
      </p>
      <hr className="my-4" />
      <p>
      A vos marques ! Prêts...
      </p>
      <p className="lead">
        <a className="btn btn-primary btn-lg" href="#" role="button">
          Achetez !
        </a>
      </p>
    </div>
  );
};

export default HomePage;
