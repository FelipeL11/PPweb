package com.dfgames.videogstore;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
	@Override
	public void addCorsMappings(CorsRegistry registry) {
		registry.addMapping("/**") // Permitir todas las rutas
				.allowedOrigins("http://localhost:3000") // Permitir solicitudes desde tu frontend
				.allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS"); // Métodos permitidos
	}
}
