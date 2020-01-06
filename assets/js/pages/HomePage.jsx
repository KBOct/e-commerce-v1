import * as React from 'react'
import Card from 'react-bootstrap/Card'
import CardGroup from 'react-bootstrap/CardGroup'

const HomePage = props => {
  return (
    <div>
    <div className="jumbotron">
      <h1 className="display-3">Bienvenue sur The Store</h1>
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

  <h2>Nos promotions</h2>
  <CardGroup>
  <Card>
  <Card.Header>
  3 produits ménagers achetés = <strong>1 produit offert</strong>
  </Card.Header>
    <Card.Img variant="top" src="http://placehold.it/1000x400" />
    <Card.Body>
      <Card.Title>Super produit</Card.Title>
      <Card.Text>
      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consectetur commodi rem recusandae ipsa laboriosam quidem aut omnis, enim aspernatur quasi! 
      </Card.Text>
    </Card.Body>
  </Card>
  <Card>
  <Card.Header>
  3 produits ménagers achetés = <strong>1 produit offert</strong>
  </Card.Header>
    <Card.Img variant="top" src="http://placehold.it/1000x400" />
    <Card.Body>
      <Card.Title>Super produit</Card.Title>
      <Card.Text>
      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consectetur commodi rem recusandae ipsa laboriosam quidem aut omnis, enim aspernatur quasi! 
      </Card.Text>
    </Card.Body>
  </Card>
  <Card>
  <Card.Header>
  3 produits ménagers achetés = <strong>1 produit offert</strong>
  </Card.Header>
    <Card.Img variant="top" src="http://placehold.it/1000x400" />
    <Card.Body>
      <Card.Title>Super produit</Card.Title>
      <Card.Text>
      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consectetur commodi rem recusandae ipsa laboriosam quidem aut omnis, enim aspernatur quasi! 
      </Card.Text>
    </Card.Body>
  </Card>
</CardGroup>
</div>

  );
};

export default HomePage;
