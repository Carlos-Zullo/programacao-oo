import java.util.Scanner;

/**
 * Classe que gerencia a interface textual para interação com o usuário.
 */
public class ContatoView {
    private ContatoController controller;
    private Scanner scanner;

    public ContatoView() {
        controller = new ContatoController();
        scanner = new Scanner(System.in);
    }

    public void exibirMenu() {
        int opcao;
        do {
            System.out.println("Agenda de Contatos");
            System.out.println("1 - Adicionar Contato");
            System.out.println("2 - Remover Contato");
            System.out.println("3 - Listar Contatos");
            System.out.println("0 - Sair");
            opcao = scanner.nextInt();
            scanner.nextLine();

            switch (opcao) {
                case 1:
                    adicionarContato();
                    break;
                case 2:
                    removerContato();
                    break;
                case 3:
                    controller.listarContatos();
                    break;
            }
        } while (opcao != 0);
    }

    private void adicionarContato() {
        System.out.print("Nome: ");
        String nome = scanner.nextLine();
        System.out.print("Telefone: ");
        String telefone = scanner.nextLine();
        System.out.print("Email: ");
        String email = scanner.nextLine();
        System.out.print("Tipo (1 - Pessoa Física, 2 - Pessoa Jurídica): ");
        int tipo = scanner.nextInt();
        scanner.nextLine();

        if (tipo == 1) {
            System.out.print("CPF: ");
            String cpf = scanner.nextLine();
            controller.adicionarContato(new PessoaFisica(nome, telefone, email, cpf));
        } else {
            System.out.print("CNPJ: ");
            String cnpj = scanner.nextLine();
            controller.adicionarContato(new PessoaJuridica(nome, telefone, email, cnpj));
        }
    }

    private void removerContato() {
        System.out.print("Informe o CPF ou CNPJ do contato a remover: ");
        String id = scanner.nextLine();
        controller.removerContato(id);
    }
}
