/**
 * Classe abstrata que representa um contato com atributos comuns.
 */
public abstract class ContatoBase implements Contato {
    private String nome;
    private String telefone;
    private String email;

    public ContatoBase(String nome, String telefone, String email) {
        if (nome.length() < 3) {
            throw new IllegalArgumentException("Nome deve conter pelo menos 3 caracteres.");
        }
        this.nome = nome;
        this.telefone = telefone;
        this.email = email;
    }

    @Override
    public String getNome() {
        return nome;
    }

    @Override
    public String getTelefone() {
        return telefone;
    }

    @Override
    public String getEmail() {
        return email;
    }
}
