import 'cliente.dart';

void main() {
  Cliente c1 = Cliente('Marina', Endereco('Rua A', 10, 'Curitiba'));
  Cliente c2 = Cliente.copia(c1);

  // Altera o endereço apenas do c2
  c2.endereco.alterarRua('Rua B');

  print('Cliente original:');
  c1.exibir();

  print('\nCliente copiado:');
  c2.exibir();
}
