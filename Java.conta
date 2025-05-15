class Conta {
    protected String cliente;
    protected double saldo;

    public Conta(String cliente, double saldo) {
        this.cliente = cliente;
        this.saldo = saldo;
    }

    public void depositar(double valor) {
        saldo += valor;
    }

    public boolean sacar(double valor) {
        if (valor <= saldo) {
            saldo -= valor;
            return true;
        }
        return false;
    }

    public boolean transferir(Conta destino, double valor) {
        if (sacar(valor)) {
            destino.depositar(valor);
            return true;
        }
        return false;
    }

    public double getSaldo() {
        return saldo;
    }

    public void imprimirExtrato() {
        System.out.println("Cliente: " + cliente);
        System.out.println("Saldo: " + saldo);
    }

    public void aplicarJurosDiarios() {}
}

class ContaCorrente extends Conta {
    public ContaCorrente(String cliente, double saldo) {
        super(cliente, saldo);
    }

    @Override
    public void aplicarJurosDiarios() {
        saldo *= 1.001; // 0.1% de juros
    }

    @Override
    public void imprimirExtrato() {
        System.out.println("Extrato da Conta Corrente:");
        super.imprimirExtrato();
    }
}

class ContaPoupanca extends Conta {
    public ContaPoupanca(String cliente, double saldo) {
        super(cliente, saldo);
    }

    @Override
    public void aplicarJurosDiarios() {
        saldo *= 1.0008; // 0.08% de juros
    }

    @Override
    public void imprimirExtrato() {
        System.out.println("Extrato da Conta Poupança:");
        super.imprimirExtrato();
    }
}

class ContaSalario extends Conta {
    public ContaSalario(String cliente, double saldo) {
        super(cliente, saldo);
    }

    @Override
    public void imprimirExtrato() {
        System.out.println("Extrato da Conta Salário:");
        super.imprimirExtrato();
    }
}

// Classe Main
public class Main {
    public static void main(String[] args) {
        ContaCorrente cc = new ContaCorrente("Alice", 1000);
        ContaPoupanca cp = new ContaPoupanca("Bob", 1500);
        ContaSalario cs = new ContaSalario("Carlos", 1200);

        cc.depositar(200);
        cp.sacar(100);
        cs.transferir(cc, 300);

        cc.aplicarJurosDiarios();
        cp.aplicarJurosDiarios();
        cs.aplicarJurosDiarios();

        cc.imprimirExtrato();
        cp.imprimirExtrato();
        cs.imprimirExtrato();
    }
}
