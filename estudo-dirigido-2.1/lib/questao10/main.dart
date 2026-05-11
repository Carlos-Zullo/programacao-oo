import 'dispositivo.dart';

void main() {
  Dispositivo d = Dispositivo('Samsung', 'TV 55"');
  Smartphone s = Smartphone('Apple', 'iPhone 15', 'iOS 17');

  print('=== Dispositivo ===');
  d.ligar();

  print('\n=== Smartphone ===');
  s.ligar();
}
