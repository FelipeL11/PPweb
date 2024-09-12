import React from "react";
import "../styles/Footer.css";

const Footer: React.FC = () => {
  return (
    <footer className="footer">
      <div className="footer-content">
        <div className="footer-section logo">
          <img src="/src/assets/images/logo-r.png" alt="DFGAMES" />
          <p className="brand-name">
            <strong>DFGAMES</strong>
          </p>
        </div>
        <div className="footer-section about">
          <h4>ACERCA DE NOSOTROS</h4>
          <p>
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Molestiae
            cupiditate optio quos, totam perferendis, ducimus nesciunt nisi
            maiores fugiat magni error dolorem ad repellat reprehenderit
            mollitia est! Dicta, fuga sequi?
          </p>
        </div>
        <div className="footer-section support">
          <h4>SOPORTE</h4>
          <div className="support-icons">
            <div className="support-icon">
              <i className="fas fa-headset"></i>
            </div>
            <div className="support-icon">
              <i className="fas fa-phone"></i>
            </div>
            <div className="support-icon">
              <i className="fas fa-map-marker-alt"></i>
            </div>
          </div>
        </div>
        <div className="footer-section contact">
          <h4>CONTACTO</h4>
          <div className="contact-icons">
            <a href="https://x.com/" target="_blank" rel="noopener noreferrer">
              <i className="fab fa-x-twitter"></i>
            </a>
            <a
              href="https://www.instagram.com"
              target="_blank"
              rel="noopener noreferrer"
            >
              <i className="fab fa-instagram"></i>
            </a>
            <a
              href="https://gmail.com"
              target="_blank"
              rel="noopener noreferrer"
            >
              <i className="fas fa-envelope"></i>
            </a>
          </div>
        </div>
        <div className="footer-section download">
          <h4>DESCARGA NUESTRA APP</h4>
          <div className="app-links">
            <a href="#" target="_blank" rel="noopener noreferrer">
              <img src="/src/assets/images/google-play.png" alt="Google Play" />
            </a>
            <a href="#" target="_blank" rel="noopener noreferrer">
              <img src="/src/assets/images/app-store.png" alt="App Store" />
            </a>
          </div>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
