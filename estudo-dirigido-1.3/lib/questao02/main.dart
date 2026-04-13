import '../questao01/cliente.dart';
import 'lista_cliente.dart';

void main() {
  Cliente c1 = Cliente('Ana Silva', 'ana@email.com', 100.0, true);
  Cliente c2 = Cliente('Carlos Souza', 'carlos@email.com', 200.0, true);
  Cliente c3 = Cliente('Maria Oliveira', 'maria@email.com', 50.0, true);

  ListaCliente lista = ListaCliente();
  lista.inserir(c1);
  lista.inserir(c2);
  lista.inserir(c3);

  print('\nTamanho da lista: ${lista.tamanho()}');

  print('\nCliente na posição 1:');
  lista.get(1)?.exibirCliente();

  print('\nRemovendo cliente na posição 0:');
  lista.remover(0);

  print('\nLista final:');
  lista.exibirLista();
  print('Tamanho final: ${lista.tamanho()}');
}
