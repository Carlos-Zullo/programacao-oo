class Data {
  int dia;
  int mes;
  int ano;
 
  Data(this.dia, this.mes, this.ano) {
    if (dia < 1 || dia > 31) {
      throw ArgumentError('O dia deve estar entre 1 e 31.');
    }
    if (mes < 1 || mes > 12) {
      throw ArgumentError('O mês deve estar entre 1 e 12.');
    }
    if (ano <= 0) {
      throw ArgumentError('O ano deve ser maior que 0.');
    }
  }
 
  void exibirData() {
    String d = dia.toString().padLeft(2, '0');
    String m = mes.toString().padLeft(2, '0');
    String a = ano.toString().padLeft(4, '0');
    print('-------------------------');
    print('Data: $d/$m/$a');
    print('-------------------------');
  }
}
