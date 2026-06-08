import 'ingresso.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Calculavel> ingressos = ListaGenerica<Calculavel>();

  ingressos.adicionar(IngressoVip('Show Rock', 200.00, 80.00));
  ingressos.adicionar(IngressoPromocional('Teatro Infantil', 100.00, 20.00));
  ingressos.adicionar(IngressoCamarote('Festival Jazz', 300.00, 50.00, 'Setor A'));
  ingressos.adicionar(IngressoPromocional('Cinema Especial', 60.00, 15.00));
  ingressos.adicionar(IngressoVip('Show Pop', 180.00, 70.00));

  print('=== Impressão da lista ===');
  ingressos.imprimirItens();

  print('\n=== Valor final de cada ingresso ===');
  for (var i in ingressos.obterItens()) {
    print('Total: R\$ ${i.valorFinal().toStringAsFixed(2)}');
  }
}
