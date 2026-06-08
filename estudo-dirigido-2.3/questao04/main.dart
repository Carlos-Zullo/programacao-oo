import 'conta.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Rentavel> contas = ListaGenerica<Rentavel>();

  contas.adicionar(ContaPoupanca('Ana', 1000.00));
  contas.adicionar(ContaCorrente('Bruno', 1500.00));
  contas.adicionar(ContaInvestimento('Carla', 5000.00));
  contas.adicionar(ContaPoupanca('Diego', 2500.00));
  contas.adicionar(ContaCorrente('Elisa', 800.00));

  print('=== Saldos antes do rendimento ===');
  contas.imprimirItens();

  print('\n=== Aplicando rendimentos ===');
  for (var c in contas.obterItens()) {
    c.aplicarRendimento();
  }

  print('\n=== Saldos após o rendimento ===');
  contas.imprimirItens();
}
