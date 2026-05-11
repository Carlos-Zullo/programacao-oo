import 'ingresso.dart';

void main() {
  Ingresso i = Ingresso('Show do Metallica', 250.00);
  IngressoVip vip = IngressoVip('Show do Metallica', 250.00, 150.00);

  print('=== Ingresso Comum ===');
  i.exibirResumo();

  print('=== Ingresso VIP ===');
  vip.exibirResumo();
}
