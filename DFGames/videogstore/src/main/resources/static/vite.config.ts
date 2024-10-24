import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    port: 3000,
    proxy: {
      '/api': {
        target: 'http://localhost:8081', // Dirección de tu backend
        changeOrigin: true,
        secure: false, // Si no tienes un certificado SSL en local
      },
    },
  },
});
