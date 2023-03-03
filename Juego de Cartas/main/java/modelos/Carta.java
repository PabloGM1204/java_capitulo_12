package modelos;

public class Carta{
    private int code;

    //Construcot
    public Carta(){
        this.code = (int)(Math.random()*40)+1;
    }

    //Getter
    public int getCode(){
        return this.code;
    }

    //Metodo
    public int valor(){
        return this.code%10;
    }

    public String toString(){
        return String.format("<div class=\"carta\"><img src=\"assets/IMG/%02d.png\"></div>", this.getCode());
    }
}
