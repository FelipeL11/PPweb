import React from "react";
import Carousel from "../components/Carousel";
import GameCard from "../components/GameCard";

//Carousel
import juego1 from "../assets/images/amongus.jpg";
import juego2 from "../assets/images/Minecraft.png";
import juego3 from "../assets/images/Fortnite.jpeg";
import juego4 from "../assets/images/valocr.jpg";
import juego5 from "../assets/images/genshincr.jpg";
import juego6 from "../assets/images/smwonder.jpeg";

//GameCards
import juegoA from "../assets/images/amongus.png";
import juegoB from "../assets/images/Minecraft.jpg";
import juegoC from "../assets/images/Fortnite.jpg";
import juegoD from "../assets/images/ARK.jpg";
import juegoE from "../assets/images/gow.jpg";
import juegoF from "../assets/images/rocket.jpg";
import juegoG from "../assets/images/pubg.jpg";
import juegoH from "../assets/images/league-of-legends.jpg";
import juegoI from "../assets/images/valogc.jpeg";
import juegoJ from "../assets/images/genshin.jpg";
import juegoK from "../assets/images/tofbw.jpg";
import juegoL from "../assets/images/smwonder.jpeg";

const HomePage: React.FC = () => {
  const featuredGames = [
    { title: "Among Us", imageUrl: juego1 },
    { title: "Minecraft", imageUrl: juego2 },
    { title: "Fortnite", imageUrl: juego3 },
    { title: "Valorant", imageUrl: juego4 },
    { title: "Genshin Impact", imageUrl: juego5 },
    { title: "Super Mario Wonder", imageUrl: juego6 },
  ];

  return (
    <div>
      <Carousel items={featuredGames} />
      <section className="popular-games">
        <div className="title-box">
          <h2>Juegos Populares</h2>
        </div>
        <div className="games-grid">
          <GameCard title="Among Us" imageUrl={juegoA} />
          <GameCard title="Minecraft" imageUrl={juegoB} />
          <GameCard title="Fortnite" imageUrl={juegoC} />
          <GameCard title="ARK" imageUrl={juegoD} />
          <GameCard title="God of War" imageUrl={juegoE} />
          <GameCard title="Rocket League" imageUrl={juegoF} />
          <GameCard title="PUBG" imageUrl={juegoG} />
          <GameCard title="League of Legends" imageUrl={juegoH} />
          <GameCard title="Valorant" imageUrl={juegoI} />
          <GameCard title="Genshin Impact" imageUrl={juegoJ} />
          <GameCard title="The Legend of Zelda (ToK)" imageUrl={juegoK} />
          <GameCard title="Super Mario Wonder" imageUrl={juegoL} />
        </div>
      </section>
    </div>
  );
};

export default HomePage;
