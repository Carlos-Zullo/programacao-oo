import 'lampada.dart';

void main() {
  Lampada l = Lampada();

  l.exibirEstado();
  l.ligar();
  l.aumentar();
  l.aumentar();
  l.diminuir();
  l.exibirEstado();
  l.desligar();
  l.exibirEstado();
}
