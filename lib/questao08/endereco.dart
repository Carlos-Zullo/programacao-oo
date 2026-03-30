class Endereco {
  String rua;
  int numero;
  String bairro;
  String cidade;
  String estado;
  int cep;
 
  Endereco(this.rua, this.numero, this.bairro, this.cidade, this.estado, this.cep) {
    if (rua.isEmpty) throw ArgumentError('A rua não pode ser vazia.');
    if (numero <= 0) throw ArgumentError('O número deve ser maior que 0.');
    if (bairro.isEmpty) throw ArgumentError('O bairro não pode ser vazio.');
    if (cidade.isEmpty) throw ArgumentError('A cidade não pode ser vazia.');
    if (estado.isEmpty) throw ArgumentError('O estado não pode ser vazio.');
    if (cep <= 0) throw ArgumentError('O CEP não pode ser vazio.');
  }
 
  String _formatarCep() {
    String cepStr = cep.toString().padLeft(8, '0');
    return '${cepStr.substring(0, 5)}-${cepStr.substring(5)}';
  }
 
  void exibirEndereco() {
    print('-------------------------');
    print('Rua:     $rua, $numero');
    print('Bairro:  $bairro');
    print('Cidade:  $cidade - $estado');
    print('CEP:     ${_formatarCep()}');
    print('-------------------------');
  }
}
