import React from "react";
import GameCard from "../components/GameCard";
import "../styles/Games.css";

// GameCards
import juego1 from "../assets/images/Minecraft.jpg";
import juego2 from "../assets/images/amongus.png";
import juego3 from "../assets/images/rocket.jpg";

const GamesPage: React.FC = () => {
  const gamesList = [
    { title: "Minecraft", imageUrl: juego1 },
    { title: "Among Us", imageUrl: juego2 },
    { title: "Rocket League", imageUrl: juego3 },
  ];

  return (
    <div>
      <h2>Todos los Juegos</h2>
      <div className="games-grid">
        {gamesList.map((game, index) => (
          <GameCard key={index} title={game.title} imageUrl={game.imageUrl} />
        ))}
      </div>
    </div>
  );
};

export default GamesPage;
