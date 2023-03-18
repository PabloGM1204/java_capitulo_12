package alumnos;

public class Alumno {
    long id;
    String nombre;
    String apellidos;
    long grupo_id = 0;
    String nomGrupo;

    public Alumno(){
        this(0,"","",0);
    }

    public Alumno(int id, String nombre, String apellidos){
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
    }

    public Alumno(int id, String nombre, String apellidos, int grupo){
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.grupo_id = grupo;
    }

    public Alumno(int id, String nombre, String apellidos, int grupo, String nomGrupo){
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.grupo_id = grupo;
        this.nomGrupo = nomGrupo;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public long getGrupo_id(){
        return grupo_id;
    }

    public String getNomGrupo(){
        return nomGrupo;
    }

    @Override
    public String toString() {
        return String.format("ID: %d, Nombre: %s, Apellidos: %s, Grupo: %d", this.id, this.nombre, this.apellidos, this.grupo_id);
    }
}
