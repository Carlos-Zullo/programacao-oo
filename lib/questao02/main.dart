import 'relogio.dart';

void main() {
  Relogio r1 = Relogio(8, 30, 0);
  Relogio r2 = Relogio(13, 45, 20);
  Relogio r3 = Relogio(23, 59, 59);

  r1.exibirHorario();
  r2.exibirHorario();
  r3.exibirHorario();
}
