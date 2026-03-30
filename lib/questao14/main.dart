import 'carro.dart';

void main() {
  Motor m1 = Motor(150, 'Flex');
  Motor m2 = Motor(300, 'Turbo');

  Carro c1 = Carro('Civic', m1);
  Carro c2 = Carro('Mustang', m2);

  c1.exibirCarro();
  c2.exibirCarro();
}
