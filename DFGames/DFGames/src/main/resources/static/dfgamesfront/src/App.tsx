import React from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Navbar from "./components/Navbar";
import Footer from "./components/Footer";
import HomePage from "./pages/HomePage";
import GamesPage from "./pages/GamesPage";
import DealsPage from "./pages/DealsPage";
import SupportPage from "./pages/SupportPage";
import AuthPage from "./pages/AuthPage";
import "./styles.css";
import "@fortawesome/fontawesome-free/css/all.min.css";

const App: React.FC = () => {
  return (
    <Router>
      <Navbar />
      <div id="root">
        <Routes>
          <Route path="/" element={<HomePage />} />
          <Route path="/games" element={<GamesPage />} />
          <Route path="/deals" element={<DealsPage />} />
          <Route path="/support" element={<SupportPage />} />
          <Route path="/auth" Component={AuthPage} />
        </Routes>
      </div>
      <Footer />
    </Router>
  );
};

export default App;
