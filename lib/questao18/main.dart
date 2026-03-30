import 'endereco.dart';

void main() {
  Endereco e1 = Endereco('Rua das Flores', 100, 'Centro', 'Maringá', 'PR', 87010000);
  Endereco e2 = Endereco('Av. Paulista', 1500, 'Bela Vista', 'São Paulo', 'SP', 01310100);
  Endereco e3 = Endereco('Rua XV de Novembro', 250, 'Centro', 'Curitiba', 'PR', 80020310);

  e1.exibirEndereco();
  e2.exibirEndereco();
  e3.exibirEndereco();
}
