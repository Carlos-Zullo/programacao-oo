import 'funcionario.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Bonificavel> funcionarios = ListaGenerica<Bonificavel>();

  funcionarios.adicionar(FuncionarioComum('Ana', 2500.00));
  funcionarios.adicionar(FuncionarioComum('Bruno', 3200.00));
  funcionarios.adicionar(Gerente('Carla', 7000.00, 'Financeiro'));
  funcionarios.adicionar(FuncionarioComum('Diego', 2800.00));
  funcionarios.adicionar(Gerente('Elisa', 8500.00, 'Tecnologia'));

  print('=== Impressão dos funcionários ===');
  funcionarios.imprimirItens();

  print('\n=== Bônus dos funcionários ===');
  for (var f in funcionarios.obterItens()) {
    print('Bônus: R\$ ${f.calcularBonus().toStringAsFixed(2)}');
  }
}
