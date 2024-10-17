import React from "react";
import GameCard from "../components/GameCard";
import "../styles/Deals.css";

// GameCards
import juego1 from "../assets/images/Minecraft.jpg";
import juego2 from "../assets/images/amongus.png";
import juego3 from "../assets/images/rocket.jpg";

const DealsPage: React.FC = () => {
  const dealsList = [
    { title: "Among Us", imageUrl: juego2 },
    { title: "Rocket League", imageUrl: juego3 },
    { title: "Minecraft", imageUrl: juego1 },
    // Agregar más ofertas aquí...
  ];

  return (
    <div>
      <h2>Ofertas Especiales</h2>
      <div className="games-grid">
        {dealsList.map((game, index) => (
          <GameCard key={index} title={game.title} imageUrl={game.imageUrl} />
        ))}
      </div>
    </div>
  );
};

export default DealsPage;
