import 'semaforo.dart';

void main() {
  Semaforo s = Semaforo('vermelho', 5);

  print('=== Estado Inicial ===');
  s.exibirEstado();

  print('=== Simulação ===');
  // Simula 3 ciclos completos (5+4+2 = 11 ticks por ciclo, 3 ciclos = 33 ticks)
  for (int i = 0; i < 33; i++) {
    s.reduzirTempo();
  }

  print('=== Estado Final ===');
  s.exibirEstado();
}
