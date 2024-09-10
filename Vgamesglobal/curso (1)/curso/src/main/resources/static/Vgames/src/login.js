import React from 'react';
import './App.css'
function login(){
    return(
        <div className="principal">
            <form>
                <h1>LOGIN </h1>
                <fieldset>
                    <legend>INFORMACIÓN</legend>
                    <div className="form-input">
                        <label htmlFor="nombre">
                            NOMBRE COMPLETO:
                            <input type="text" placeholder="Carlos Suarez" id="NOMBRE COMPLETO"/>
                        </label>
                    </div>
                    <div className="form-input">
                        <label for="EMAIL">
                            EMAIL:
                            <input type="email" placeholder="carlossuarez@gmail.com " id="EMAIL"/>
                        </label>
                    </div>
                    <div className="form-input">
                        <label for="EDAD">
                            EDAD:
                            <input type="int" placeholder="23" id="EDAD"/>
                        </label>
                    </div>
                    <div className="form-input">
                        <label for="CONTRASEÑA">
                            CONTRASEÑA:
                            <input type="password" id="CONTRASEÑA"/>
                        </label>
                    </div>
                </fieldset>
                <div className="form-input">
                    <label>Acepto <a href="terms.html" target="blank">terminos y condiciones</a>
                        <input type="checkbox" className="checkbox"/>
                    </label>
                </div>
                <div className="botonf">
                    <button className="boton-final">Terminar Registro</button>
                </div>

            </form>
        </div>
    );
}

export default login;