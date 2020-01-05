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


  <CardGroup>
  <Card>
    <Card.Img variant="top" src="holder.js/100px160" />
    <Card.Body>
      <Card.Title>Card title</Card.Title>
      <Card.Text>
        This is a wider card with supporting text below as a natural lead-in to
        additional content. This content is a little bit longer.
      </Card.Text>
    </Card.Body>
    <Card.Footer>
      <small className="text-muted">Last updated 3 mins ago</small>
    </Card.Footer>
  </Card>
  <Card>
    <Card.Img variant="top" src="holder.js/100px160" />
    <Card.Body>
      <Card.Title>Card title</Card.Title>
      <Card.Text>
        This card has supporting text below as a natural lead-in to additional
        content.{' '}
      </Card.Text>
    </Card.Body>
    <Card.Footer>
      <small className="text-muted">Last updated 3 mins ago</small>
    </Card.Footer>
  </Card>
  <Card>
  <Card.Header>
    Card Header
  </Card.Header>
    <Card.Img variant="top" src="http://placehold.it/300x300" />
    <Card.Body>
      <Card.Title>Card title</Card.Title>
      <Card.Text>
        This is a wider card with supporting text below as a natural lead-in to
        additional content. This card has even longer content than the first to
        show that equal height action.
      </Card.Text>
    </Card.Body>
  </Card>
</CardGroup>
</div>

  );
};

export default HomePage;
