import 'pessoa.dart';
import '../questao08/endereco.dart';
 
void main() {
  Endereco end1 = Endereco('Rua das Flores', 100, 'Centro', 'Maringá', 'PR', 87010000);
  Endereco end2 = Endereco('Av. Paulista', 1500, 'Bela Vista', 'São Paulo', 'SP', 01310100);
  Endereco end3 = Endereco('Rua XV de Novembro', 250, 'Centro', 'Curitiba', 'PR', 80020310);
 
  Pessoa p1 = Pessoa('Ana Silva', 22, '111.222.333-44', end1);
  Pessoa p2 = Pessoa('Carlos Souza', 35, '555.666.777-88', end2);
  Pessoa p3 = Pessoa('Maria Oliveira', 17, '999.000.111-22', end3);
 
  p1.exibirPessoa();
  p2.exibirPessoa();
  p3.exibirPessoa();
}
