import 'dispositivo.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Ligavel> dispositivos = ListaGenerica<Ligavel>();

  dispositivos.adicionar(Smartphone('Samsung', 'Galaxy S24', 'Android'));
  dispositivos.adicionar(Smartphone('Apple', 'iPhone 15', 'iOS'));
  dispositivos.adicionar(Notebook('Dell', 'Inspiron', 16));
  dispositivos.adicionar(Notebook('Lenovo', 'ThinkPad', 32));
  dispositivos.adicionar(Televisao('LG', 'OLED55', 55));

  print('=== Impressão da lista ===');
  dispositivos.imprimirItens();

  print('\n=== Ligando e desligando cada dispositivo ===');
  for (var d in dispositivos.obterItens()) {
    d.ligar();
    d.desligar();
  }
}
