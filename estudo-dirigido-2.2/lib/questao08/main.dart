import 'livro.dart';

void main() {
  LivroDigital ld = LivroDigital('Clean Code', 'Robert Martin', 12.5);
  LivroFisico lf = LivroFisico('Design Patterns', 'GoF', 395);

  ld.exibirInformacoes();
  lf.exibirInformacoes();
}
