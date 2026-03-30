n · DART
Copiar

import 'lampada.dart';
 
void main() {
  Lampada l = Lampada();
 
  l.exibirEstado();
  l.ligar();
  l.desligar();
  l.ligar();
  l.desligar();
  l.ligar();
  l.desligar();
  l.ligar();
  l.desligar();
  l.ligar(); // 5ª ligação — queima aqui
  l.exibirEstado();
  l.ligar(); // tentativa após queimar
}
 
