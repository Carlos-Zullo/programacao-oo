import 'ingresso.dart';

void main() {
  IngressoVip vip = IngressoVip('Show do Metallica', 250.00, 150.00);
  IngressoPromocional promo = IngressoPromocional('Festival de Jazz', 180.00, 50.00);

  vip.exibir();
  promo.exibir();
}
