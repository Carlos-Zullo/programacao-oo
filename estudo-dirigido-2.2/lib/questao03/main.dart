import 'veiculo.dart';

void main() {
  Veiculo carro = Carro('Toyota', 'Corolla', 2024, 4);
  Veiculo moto = Moto('Honda', 'CB 500', 2023, 500);

  carro.exibirFicha();
  moto.exibirFicha();
}