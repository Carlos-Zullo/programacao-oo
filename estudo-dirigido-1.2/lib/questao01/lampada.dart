class Lampada {
  bool _ligada;
  int _intensidade;
 
  Lampada()
      : _ligada = false,
        _intensidade = 50;
 
  void ligar() {
    if (_ligada) {
      print('A lâmpada já está ligada.');
      return;
    }
    _ligada = true;
    print('Lâmpada ligada.');
  }
 
  void desligar() {
    if (!_ligada) {
      print('A lâmpada já está desligada.');
      return;
    }
    _ligada = false;
    print('Lâmpada desligada.');
  }
 
  void aumentar() {
    if (_intensidade >= 100) {
      print('Intensidade já está no máximo (100).');
      return;
    }
    _intensidade += 10;
    print('Intensidade aumentada para $_intensidade.');
  }
 
  void diminuir() {
    if (_intensidade <= 0) {
      print('Intensidade já está no mínimo (0).');
      return;
    }
    _intensidade -= 10;
    print('Intensidade diminuída para $_intensidade.');
  }
 
  void exibirEstado() {
    print('-------------------------');
    print('Estado:     ${_ligada ? "💡 Ligada" : "🔌 Desligada"}');
    print('Intensidade: $_intensidade');
    print('-------------------------');
  }
}
 
