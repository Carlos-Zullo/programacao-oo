import 'contador.dart';
 
void main() {
  Contador c1 = Contador(0);
  Contador c2 = Contador(10);
 
  print('=== Contador 1 ===');
  c1.exibirValor();
  c1.incrementar();
  c1.incrementar();
  c1.incrementar();
  c1.decrementar();
  c1.zerar();
  c1.decrementar(); // tentativa de ir abaixo de 0
  c1.exibirValor();
 
  print('=== Contador 2 ===');
  c2.exibirValor();
  c2.decrementar();
  c2.decrementar();
  c2.incrementar();
  c2.zerar();
  c2.exibirValor();
}
