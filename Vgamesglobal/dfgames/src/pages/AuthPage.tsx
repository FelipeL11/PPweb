import React, { useState } from "react";
import LoginForm from "../components/LoginForm";
import RegisterForm from "../components/RegisterForm";
import "../styles/LoginForm.css";
import "../styles/RegisterForm.css";

const AuthPage: React.FC = () => {
  const [isRegistering, setIsRegistering] = useState(false);

  const switchToRegister = () => setIsRegistering(true);
  const switchToLogin = () => setIsRegistering(false);

  return (
    <div className={isRegistering ? "register-page" : "login-page"}>
      {isRegistering ? (
        <div className="register-container">
          <RegisterForm onSwitchToLogin={switchToLogin} />
        </div>
      ) : (
        <div className="login-container">
          <LoginForm onSwitchToRegister={switchToRegister} />
        </div>
      )}
    </div>
  );
};

export default AuthPage;
