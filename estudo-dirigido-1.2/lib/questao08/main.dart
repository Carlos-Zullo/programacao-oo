import 'televisao.dart';

void main() {
  Televisao tv = Televisao(5, 20);
  ControleRemoto controle = ControleRemoto(tv);

  print('Estado inicial:');
  tv.exibir();

  controle.aumentarVolume();
  controle.proximoCanal();

  print('\nDepois de usar o controle:');
  tv.exibir();
}
