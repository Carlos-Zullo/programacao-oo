import java.util.ArrayList;
import java.util.List;

/**
 * Classe responsável por gerenciar contatos no sistema.
 */
public class ContatoController {
    private List<Contato> contatos;

    public ContatoController() {
        contatos = new ArrayList<>();
    }

    public void adicionarContato(Contato contato) {
        contatos.add(contato);
    }

    public void removerContato(String identificador) {
        contatos.removeIf(c -> 
            (c instanceof PessoaFisica && ((PessoaFisica) c).getCpf().equals(identificador)) ||
            (c instanceof PessoaJuridica && ((PessoaJuridica) c).getCnpj().equals(identificador))
        );
    }

    public void listarContatos() {
        for (Contato c : contatos) {
            System.out.println("Nome: " + c.getNome());
            System.out.println("Telefone: " + c.getTelefone());
            System.out.println("Email: " + c.getEmail());
            if (c instanceof PessoaFisica) {
                System.out.println("CPF: " + ((PessoaFisica) c).getCpf());
            } else {
                System.out.println("CNPJ: " + ((PessoaJuridica) c).getCnpj());
            }
            System.out.println("----------------------");
        }
    }
}
