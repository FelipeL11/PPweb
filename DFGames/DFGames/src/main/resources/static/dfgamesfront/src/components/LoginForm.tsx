import React, { useState } from "react";
import "../styles/LoginForm.css";

const LoginForm: React.FC<{ onSwitchToRegister: () => void }> = ({
  onSwitchToRegister,
}) => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const handleLogin = (e: React.FormEvent) => {
    e.preventDefault();
    // Aquí puedes agregar la lógica para autenticar al usuario
    console.log("Login", { email, password });
  };

  return (
    <div className="login-form">
      <h2>Iniciar Sesión</h2>
      <form onSubmit={handleLogin}>
        <div>
          <label htmlFor="email">Correo electrónico</label>
          <input
            type="email"
            id="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
          />
        </div>
        <div>
          <label htmlFor="password">Contraseña</label>
          <input
            type="password"
            id="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
        </div>
        <button type="submit">Iniciar sesión</button>
      </form>
      <p>
        ¿No tienes cuenta?{" "}
        <button type="button" onClick={onSwitchToRegister}>
          Regístrate
        </button>
      </p>
    </div>
  );
};

export default LoginForm;
