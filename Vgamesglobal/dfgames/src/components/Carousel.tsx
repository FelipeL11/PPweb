import React, { useState, useEffect } from "react";
import "../styles/Carousel.css";

interface CarouselItem {
  title: string;
  imageUrl: string;
}

interface CarouselProps {
  items: CarouselItem[];
}

const Carousel: React.FC<CarouselProps> = ({ items }) => {
  const [currentIndex, setCurrentIndex] = useState(0);

  const handlePrevClick = () => {
    setCurrentIndex((prevIndex) =>
      prevIndex === 0 ? items.length - 1 : prevIndex - 1
    );
  };

  const handleNextClick = () => {
    setCurrentIndex((prevIndex) =>
      prevIndex === items.length - 1 ? 0 : prevIndex + 1
    );
  };

  // Auto-rotate images every 3 seconds
  useEffect(() => {
    const interval = setInterval(() => {
      handleNextClick();
    }, 5000); // Cambia a la siguiente imagen cada 3 segundos

    // Limpia el intervalo cuando el componente se desmonte
    return () => clearInterval(interval);
  }, [currentIndex]);

  return (
    <div className="carousel">
      <button
        className="carousel-button carousel-button-prev"
        onClick={handlePrevClick}
      >
        &#10094;
      </button>
      <div className="carousel-items">
        {items.map((item, index) => (
          <div
            key={index}
            className="carousel-item"
            style={{ transform: `translateX(-${currentIndex * 100}%)` }}
          >
            <div className="carousel-overlay"></div>
            <img src={item.imageUrl} alt={item.title} />
            <div className="carousel-text">
              <h2>{item.title}</h2>
            </div>
          </div>
        ))}
      </div>
      <button
        className="carousel-button carousel-button-next"
        onClick={handleNextClick}
      >
        &#10095;
      </button>
    </div>
  );
};

export default Carousel;
