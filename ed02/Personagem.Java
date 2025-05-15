class Personagem {
    protected String nome;
    protected int hp;
    protected int ataqueBase;

    public Personagem(String nome, int hp, int ataqueBase) {
        this.nome = nome;
        this.hp = hp;
        this.ataqueBase = ataqueBase;
    }

    public void atacar(Personagem inimigo) {
        inimigo.defender(ataqueBase);
    }

    public void defender(int dano) {
        hp -= dano;
    }

    public void usarHabilidadeEspecial() {}

    public void status() {
        System.out.println(nome + " | HP: " + hp);
    }
}

class Guerreiro extends Personagem {
    public Guerreiro(String nome) {
        super(nome, 100, 20);
    }

    @Override
    public void atacar(Personagem inimigo) {
        inimigo.defender(ataqueBase);
    }

    @Override
    public void defender(int dano) {
        hp -= dano / 2; // Reduz dano pela metade
    }

    @Override
    public void usarHabilidadeEspecial() {
        System.out.println(nome + " usa Golpe Duplo!");
        ataqueBase *= 2;
    }
}

class Mago extends Personagem {
    public Mago(String nome) {
        super(nome, 80, 25);
    }

    @Override
    public void usarHabilidadeEspecial() {
        System.out.println(nome + " lança Bola de Fogo!");
    }
}

class Arqueiro extends Personagem {
    public Arqueiro(String nome) {
        super(nome, 90, 15);
    }

    @Override
    public void usarHabilidadeEspecial() {
        System.out.println(nome + " dispara Chuva de Flechas!");
    }
}

// Classe Main
public class MainRpg {
    public static void main(String[] args) {
        Guerreiro g = new Guerreiro("Thorgal");
        Mago m = new Mago("Merlino");
        Arqueiro a = new Arqueiro("Legolis");

        g.status();
        m.status();
        a.status();

        g.atacar(m);
        m.usarHabilidadeEspecial();
        a.usarHabilidadeEspecial();

        g.status();
        m.status();
        a.status();
    }
}
