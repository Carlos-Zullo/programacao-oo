import 'dispositivo.dart';

void main() {
  Smartphone s = Smartphone('Apple', 'iPhone 15', 'iOS 17');
  Notebook n = Notebook('Dell', 'Inspiron', 16);

  print('=== Smartphone ===');
  s.ligar();
  s.desligar();

  print('\n=== Notebook ===');
  n.ligar();
  n.desligar();
}
