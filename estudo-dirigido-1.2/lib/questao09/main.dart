import 'carro.dart';

void main() {
  Carro carro = Carro('Fusca', 12000);
  Oficina oficina = Oficina();

  print('Antes da revisão:');
  carro.exibir();

  oficina.revisar(carro);

  print('\nDepois da revisão:');
  carro.exibir();
}
