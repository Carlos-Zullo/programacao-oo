import 'veiculo.dart';

void main() {
  Veiculo v = Veiculo('Honda', 'CB 500', 2022);
  Carro c = Carro('Toyota', 'Corolla', 2024, 4);

  print('=== Veículo ===');
  v.exibirFicha();

  print('=== Carro ===');
  c.exibirFicha();
}
