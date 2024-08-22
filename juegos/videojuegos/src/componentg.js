import React, { useState } from 'react';
import './App.css';
import {
  Carousel,
  CarouselItem,
  CarouselControl,
  CarouselIndicators,
  Navbar,
  NavbarBrand,
} from 'reactstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

const items = [
  {
    src: require('./images/img/carrusel2.jpg'),
    key: 2,
  },
  {
    src: require('./images/img/carrusel3.jpg'),
    key: 3,
  },
  {
    src: require('./images/img/carrusel4.jpg'),
    key: 4,
  },
  {
    src: require('./images/img/carrusel5.jpg'),
    key: 5,
  },
];

function Example() {
  const [activeIndex, setActiveIndex] = useState(0);
  const [animating, setAnimating] = useState(false);

  const next = () => {
    if (animating) return;
    const nextIndex = activeIndex === items.length - 1 ? 0 : activeIndex + 1;
    setActiveIndex(nextIndex);
  };

  const previous = () => {
    if (animating) return;
    const nextIndex = activeIndex === 0 ? items.length - 1 : activeIndex - 1;
    setActiveIndex(nextIndex);
  };

  const goToIndex = (newIndex) => {
    if (animating) return;
    setActiveIndex(newIndex);
  };

  const slides = items.map((item) => {
    return (
      <CarouselItem
        onExiting={() => setAnimating(true)}
        onExited={() => setAnimating(false)}
        key={item.key}
      >
        <img src={item.src} alt="" className="carousel-image" />
      </CarouselItem>
    );
  });

  return (
    <div className="container-fluid">
      <Navbar color="dark" dark expand="md" className="justify-content-center">
        <NavbarBrand href="/">

          <img
            src={require('./images/video-game-controller-logo-icon-vector-Graphics-18872291-1-580x386.jpg')}
            alt=""
            style={{
              height: 50,
              width: 50
            }}
          />

          <img
            src={require('./images/login.jpg')}
            alt=""
            style={{
              height: 50,
              width: 50
            }}
          />
        </NavbarBrand>
      </Navbar>
      <div className="row">
        <div className="col-md-7 col-lg-8">
          <Carousel
            activeIndex={activeIndex}
            next={next}
            previous={previous}
          >
            <CarouselIndicators
              items={items}
              activeIndex={activeIndex}
              onClickHandler={goToIndex}
            />
            {slides}
            <CarouselControl
              direction="prev"
              directionText="Previous"
              onClickHandler={previous}
            />
            <CarouselControl
              direction="next"
              directionText="Next"
              onClickHandler={next}
            />
          </Carousel>
        </div>

        <div className="col-md-4 col-lg-3">
          <center>
          <img src={require('./images/img/carrusel1.jpg')} alt="" width="50%" height="25%" /><br/>
          </center>
            <h4>OVERCOKKED:</h4>
            $8.375 cop<br />
            <button>COMPRA AQUI</button><br />
            <h4>Overcooked!2-Gourmet Edition:</h4>
            $26.977 cop<br/>
            <button>COMPRA AQUI</button><br />
            <h4>Chaotic Cooking Bundle:</h4>
            $35.437 cop<br/>
            <button>COMPRA AQUI</button><br />
            <h4>Team17 Co-op Bundle</h4>
            $126.663 cop<br/>
            <button>COMPRA AQUI</button><br />
        </div>
      </div>
      <div className="row mt-3">
        <div className="col-md-5 col-lg-8">
        <center>
          <div className="thumbnail-container">
          <center>
            {items.map((item, index) => (
              <img key={item.key} src={item.src} alt="" width="25%" height="70%"
                className="thumbnail-image"
                onClick={() => setActiveIndex(index)}
              />
            ))}
            </center>
          </div>
          
        </center>
        </div>
         <div className="col-md-20 col-lg-25">
           <table className="info-container">
             <tbody>
               <tr>
                 <td>
                   <h4>DESCRIPCION:</h4>
                   ¡Overcooked regresa con una nueva ración de acción culinaria caótica!
                   Viaja de regreso al Reino Cebolla y reúne a tu equipo de chefs <br />
                   en el clásico modo cooperativo
                   desde el sofá o en el juego en línea para hasta cuatro jugadores.<br />
                   Agárrense los delantales...
                   ¡es hora de salvar el mundo otra vez!<br />
                   
                   <h4>De la sartén al fuego...</h4>
                   Has salvado al mundo del Ever Peckish. ¡Ahora ha surgido una nueva amenaza<br/>
                   y es hora de volver a la cocina para calmar el hambre de The Unbread!<br/>
                   <h4>Locura multijugador en linea/local...</h4>
                   Trabajarán juntos (o uno contra el otro) para obtener la puntuación más alta<br/>
                   en el caótico modo multijugador local y en línea.<br/>
                   Lanzamiento: 7 de agosto del 2018.<br /> 
                 </td>
               </tr>
             </tbody>
           </table>
         </div>
      </div>
    </div>
  );
}

export default Example;
