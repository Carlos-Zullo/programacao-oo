import 'casa.dart';

void main() {
  Comodo c1 = Comodo('Sala', 25.0);
  Comodo c2 = Comodo('Quarto', 15.0);
  Comodo c3 = Comodo('Cozinha', 12.5);

  Casa casa = Casa('João da Silva', c1, c2, c3);

  casa.exibirCasa();
}
