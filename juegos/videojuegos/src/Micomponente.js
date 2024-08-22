import React, { useState } from 'react';
import './App.css';
import {
  Carousel,
  CarouselItem,
  CarouselControl,
  CarouselIndicators,
  CarouselCaption,
  Navbar,
  NavbarBrand,

} from 'reactstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

const items = [
  {
    src: require('./images/carru/1366_2000.jpeg'),
    key: 1,
  },
  {
    src: require('./images/carru/stardew-valley.jpg'),
    key: 2,
  },
  {
    src: require('./images/carru/wp2771421.webp'),
    key: 3,
  },
  {
    src: require('./images/carru/minecraft_2.jpg_554688468.webp'),
    key: 4,
  },
  {
  src: require('./images/carru/among_us_1.jpg_554688468.webp'),
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
        key={item.src}
      >
        <center>
        <img src={item.src} alt={item.altText} width="98%" height="850px" />
        </center>
        <CarouselCaption
          captionText={item.caption}
          captionHeader={item.caption}
        />
      </CarouselItem>
    );
  });

  return (
    <>
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
      
      <div style={{ marginBottom: '20px' }}>
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
      
      <div style={{ display: 'flex', justifyContent: 'center' }}>
        <center>
    <a href="https://playvalorant.com/es-mx/" style={{ marginRight: '10px' }}>
    <img src={require('./portadas/imagen1.webp')} alt="" width="15%" height="70%"/>
    </a>
    <img src={require('./portadas/450_1000.webp')} alt="" width="15%" height="70%"  style={{ margin: '0 10px' }} />
    <img src={require('./portadas/crysis.jpg')} alt="" width="15%" height="70%" style={{ margin: '0 10px' }} />
    <img src={require('./portadas/gta5.jpg')} alt="" width="15%" height="70%" style={{ marginLeft: '10px' }} />
    <img src={require('./portadas/bbat.jpg')} alt="" width="15%" height="70%" style={{ marginLeft: '10px'}} />
        </center> 
      </div>
    </>
  );
}

export default Example;
