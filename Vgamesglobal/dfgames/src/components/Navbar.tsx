import React from "react";
import { useNavigate } from "react-router-dom";
import "../styles/Navbar.css";

const Navbar: React.FC = () => {
  const navigate = useNavigate();

  const handleLoginClick = () => {
    navigate("/auth");
  };

  return (
    <div className="navbar">
      <div className="navbar-logo">
        <img className="logo" src="/src/assets/images/logo-r.png" alt="Logo" />
        <span className="brand-name">DFGAMES</span>
      </div>
      <div className="navbar-content">
        <ul className="navbar-links">
          <li>
            <a href="/">Inicio</a>
          </li>
          <li>
            <a href="/games">Juegos</a>
          </li>
          <li>
            <a href="/deals">Ofertas</a>
          </li>
        </ul>
        <div className="navbar-login">
          <button className="login-button" onClick={handleLoginClick}>
            Login
          </button>
        </div>
      </div>
    </div>
  );
};

export default Navbar;
