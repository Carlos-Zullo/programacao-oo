import 'veiculo.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Fichavel> veiculos = ListaGenerica<Fichavel>();

  veiculos.adicionar(Carro('Toyota', 'Corolla', 2022, 4));
  veiculos.adicionar(Carro('Honda', 'Civic', 2021, 4));
  veiculos.adicionar(Moto('Yamaha', 'Fazer', 2023, 250));
  veiculos.adicionar(Moto('Honda', 'Biz', 2020, 125));
  veiculos.adicionar(Caminhao('Volvo', 'VM', 2019, 12));

  print('=== Impressão da lista ===');
  veiculos.imprimirItens();

  print('\n=== Ficha de cada veículo ===');
  for (var v in veiculos.obterItens()) {
    v.exibirFicha();
  }
}
