/**
 * Classe abstrata que representa um funcionário genérico.
 */
abstract class Funcionario {
    protected String nome;
    protected double salarioBase;

    /**
     * Construtor do funcionário.
     * @param nome Nome do funcionário.
     * @param salarioBase Salário base do funcionário.
     */
    public Funcionario(String nome, double salarioBase) {
        this.nome = nome;
        this.salarioBase = salarioBase;
    }

    /**
     * Exibe o nome e o salário base do funcionário.
     */
    public void exibirDados() {
        System.out.println("Nome: " + nome);
        System.out.println("Salário Base: " + salarioBase);
    }

    /**
     * Método abstrato para cálculo do salário final.
     * @return Salário final calculado.
     */
    public abstract double calcularSalario();
}

/**
 * Representa um funcionário CLT que recebe um adicional fixo.
 */
class FuncionarioCLT extends Funcionario {
    /**
     * Construtor.
     * @param nome Nome do funcionário.
     * @param salarioBase Salário base.
     */
    public FuncionarioCLT(String nome, double salarioBase) {
        super(nome, salarioBase);
    }

    @Override
    public double calcularSalario() {
        return salarioBase + 300;
    }
}

/**
 * Representa um funcionário temporário que tem desconto fixo.
 */
class FuncionarioTemporario extends Funcionario {
    /**
     * Construtor.
     * @param nome Nome do funcionário.
     * @param salarioBase Salário base.
     */
    public FuncionarioTemporario(String nome, double salarioBase) {
        super(nome, salarioBase);
    }

    @Override
    public double calcularSalario() {
        return salarioBase - 100;
    }
}

/**
 * Classe principal para execução da folha de pagamento.
 */
public class ProgramaFolha {
    public static void main(String[] args) {
        Funcionario f1 = new FuncionarioCLT("Carlos", 2000.0);
        Funcionario f2 = new FuncionarioTemporario("Ana", 2000.0);

        f1.exibirDados();
        System.out.println("Salário Final: " + f1.calcularSalario());
        System.out.println();

        f2.exibirDados();
        System.out.println("Salário Final: " + f2.calcularSalario());
    }
}
