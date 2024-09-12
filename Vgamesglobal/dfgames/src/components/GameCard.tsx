import React from "react";
import "../styles/GameCard.css";

interface GameCardProps {
  title: string;
  imageUrl: string;
}

const GameCard: React.FC<GameCardProps> = ({ title, imageUrl }) => {
  return (
    <div className="game-card">
      <img src={imageUrl} alt={title} className="game-card-image" />
      <div className="game-card-overlay">
        <h3 className="game-card-title">{title}</h3>
        <button className="add-to-cart">
          <i className="fas fa-shopping-cart"></i> Añadir al carrito
        </button>
      </div>
    </div>
  );
};

export default GameCard;
