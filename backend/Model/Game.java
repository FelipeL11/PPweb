import java.util.UUID;

public class Game {
    private UUID id_juegos;
    private String nombre_j;
    private double precio;
    private String juegos_categoria;


    public Game(String nombre_j, double precio, String juegos_categoria) {
        this.id_juegos = UUID.randomUUID();
        this.nombre_j = nombre_j;
        this.precio = precio;
        this.juegos_categoria = juegos_categoria;

    }

    // Getters and setters
    public UUID getId() {
        return id;
    }

    public String getNombre_j() {
        return nombre_j;
    }

    public void setNombre_j(String nombre_j) {
        this.nombre_j = nombre_j;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getJuegos_categoria() {
        return juegos_categoria;
    }

    public void setJuegos_categoria(String juegos_categoria) {
        this.juegos_categoria = juegos_categoria;
    }



}