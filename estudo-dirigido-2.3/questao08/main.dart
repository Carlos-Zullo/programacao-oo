import 'livro.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Informativo> livros = ListaGenerica<Informativo>();

  livros.adicionar(LivroFisico('Clean Code', 'Robert Martin', 425));
  livros.adicionar(LivroDigital('Dart Básico', 'Mariana Souza', 12));
  livros.adicionar(Audiobook('POO na Prática', 'Carlos Lima', 180));
  livros.adicionar(LivroFisico('Algoritmos Modernos', 'Ana Torres', 350));
  livros.adicionar(LivroDigital('Flutter Essencial', 'Pedro Alves', 25));

  print('=== Impressão da lista ===');
  livros.imprimirItens();

  print('\n=== Informações de cada livro ===');
  for (var l in livros.obterItens()) {
    l.exibirInformacoes();
  }
}
