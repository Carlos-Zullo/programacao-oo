import 'livro.dart';

void main() {
  Livro l = Livro('Clean Code', 'Robert Martin');
  LivroDigital ld = LivroDigital('Design Patterns', 'GoF', 12.5);

  print('=== Livro Físico ===');
  l.exibirInformacoes();

  print('=== Livro Digital ===');
  ld.exibirInformacoes();
}
