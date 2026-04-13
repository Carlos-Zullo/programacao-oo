import 'cliente.dart';

void main() {
  Cliente c1 = Cliente('Ana Silva', 'ana@email.com', 100.0, true);
  Cliente c2 = Cliente('Carlos Souza', 'carlos@email.com', 200.0, true);

  // Alterando dados com setters
  c1.nome = 'Ana Paula Silva';
  c2.email = 'carlos.souza@email.com';

  // Operações de saldo
  c1.adicionarSaldo(50.0);
  c2.debitarSaldo(80.0);

  // Desativando c2
  c2.desativar();

  print('=== Dados Finais ===');
  c1.exibirCliente();
  c2.exibirCliente();
}
