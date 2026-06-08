import 'pessoa.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Apresentavel> pessoas = ListaGenerica<Apresentavel>();

  pessoas.adicionar(Aluno('Ana', 19, 'A001', 'ADS'));
  pessoas.adicionar(Aluno('Bruno', 22, 'A002', 'Engenharia de Software'));
  pessoas.adicionar(Professor('Carla', 38, 'POO', 2000.00));
  pessoas.adicionar(Professor('Diego', 41, 'Banco de Dados', 1900.00));
  pessoas.adicionar(Coordenador('Elisa', 45, 'Tecnologia', 15));

  print('=== Impressão da lista ===');
  pessoas.imprimirItens();

  print('\n=== Exibindo dados de cada pessoa ===');
  for (var p in pessoas.obterItens()) {
    p.exibirDados();
  }
}
