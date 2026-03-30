class Comodo {
  String nome;
  double tamanho;

  Comodo(this.nome, this.tamanho) {
    if (nome.isEmpty) throw ArgumentError('O nome do cômodo não pode ser vazio.');
    if (tamanho <= 0) throw ArgumentError('O tamanho deve ser maior que 0.');
  }

  void exibir() {
    print('  🚪 $nome: ${tamanho.toStringAsFixed(1)} m²');
  }
}

class Casa {
  String proprietario;
  Comodo comodo1;
  Comodo comodo2;
  Comodo comodo3;

  Casa(this.proprietario, this.comodo1, this.comodo2, this.comodo3) {
    if (proprietario.isEmpty) throw ArgumentError('O proprietário não pode ser vazio.');
  }

  double calcularAreaTotal() {
    return comodo1.tamanho + comodo2.tamanho + comodo3.tamanho;
  }

  void exibirCasa() {
    print('=========================');
    print('🏠 Proprietário: $proprietario');
    print('Cômodos:');
    comodo1.exibir();
    comodo2.exibir();
    comodo3.exibir();
    print('Área total: ${calcularAreaTotal().toStringAsFixed(1)} m²');
    print('=========================');
  }
}
