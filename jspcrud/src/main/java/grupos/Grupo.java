package grupos;

public class Grupo {
    long id;
    String nombre;
    String profesor;

    Grupo(long id, String n, String p){
        this.id = id;
        this.nombre = n;
        this.profesor = p;
    }


    public long getId(){
        return id;
    }

    public void setId(long id){
        this.id = id;
    }

    public String getNombre(){
        return this.nombre;
    }

    public void setNombre(String n){
        this.nombre = n;
    }

    public String getProfesor(){
        return this.profesor;
    }

    public void setProfesor(String p){
        this.profesor = p;
    }

    public String toString(){
        return String.format("ID: %d, Nombre: %s, Profesor: %s", this.id, this.nombre, this.profesor);
    }
}
