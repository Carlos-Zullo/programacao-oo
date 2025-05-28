/**
 * Interface para autenticação de usuários.
 */
interface Autenticavel {
    boolean autenticar(String senha);
}

/**
 * Interface para gerenciamento de usuários.
 */
interface Gerenciavel {
    void alterarSenha(String novaSenha);
    void bloquearUsuario();
}

/**
 * Interface para registrar logs.
 */
interface Logavel {
    void registrarLog(String operacao);
}

/**
 * Classe abstrata representando um usuário do sistema.
 */
abstract class Usuario {
    protected String login;
    protected String senha;

    public Usuario(String login, String senha) {
        this.login = login;
        this.senha = senha;
    }

    /**
     * Exibe o login do usuário.
     */
    public void exibirLogin() {
        System.out.println("Login: " + login);
    }
}

/**
 * Representa um administrador do sistema.
 */
class Administrador extends Usuario implements Autenticavel, Gerenciavel, Logavel {
    public Administrador(String login, String senha) {
        super(login, senha);
    }

    @Override
    public boolean autenticar(String senha) {
        return this.senha.equals(senha);
    }

    @Override
    public void alterarSenha(String novaSenha) {
        this.senha = novaSenha;
        System.out.println("Senha alterada com sucesso.");
    }

    @Override
    public void bloquearUsuario() {
        System.out.println("Usuário bloqueado com sucesso.");
    }

    @Override
    public void registrarLog(String operacao) {
        System.out.println("Log registrado: " + operacao);
    }
}

/**
 * Representa um visitante com acesso restrito.
 */
class Visitante extends Usuario {
    public Visitante(String login, String senha) {
        super(login, senha);
    }

    @Override
    public void exibirLogin() {
        System.out.println("Visitante - acesso restrito ao sistema.");
    }
}

/**
 * Representa um cliente comum.
 */
class Cliente extends Usuario implements Autenticavel {
    public Cliente(String login, String senha) {
        super(login, senha);
    }

    @Override
    public boolean autenticar(String senha) {
        return senha.equals(this.senha) && senha.length() > 6;
    }
}

/**
 * Classe principal para teste de login dos usuários.
 */
public class ProgramaLogin {
    public static void main(String[] args) {
        Administrador admin = new Administrador("admin", "admin123");
        Visitante guest = new Visitante("guest", "qualquer");
        Cliente joao = new Cliente("joao", "segredo123");

        admin.exibirLogin();
        System.out.println("Autenticação com 'admin123': " + admin.autenticar("admin123"));
        System.out.println("Autenticação com 'errada': " + admin.autenticar("errada"));
        admin.alterarSenha("novaSenha123");
        admin.bloquearUsuario();
        admin.registrarLog("Exclusão de conta");
        System.out.println();

        guest.exibirLogin();
        System.out.println();

        joao.exibirLogin();
        System.out.println("Autenticação com 'segredo123': " + joao.autenticar("segredo123"));
        System.out.println("Autenticação com '12345': " + joao.autenticar("12345"));
    }
}
