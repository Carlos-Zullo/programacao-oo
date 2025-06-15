/**
 * Classe que representa um contato de Pessoa Jurídica.
 */
public class PessoaJuridica extends ContatoBase {
    private String cnpj;

    public PessoaJuridica(String nome, String telefone, String email, String cnpj) {
        super(nome, telefone, email);
        if (!cnpj.matches("\\d{14}")) {
            throw new IllegalArgumentException("CNPJ deve conter 14 dígitos numéricos.");
        }
        this.cnpj = cnpj;
    }

    public String getCnpj() {
        return cnpj;
    }
}
