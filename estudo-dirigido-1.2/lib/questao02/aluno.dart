class Aluno {
  String _ra;
  String _nome;
  double _notaFinal;

  Aluno({required String ra, required String nome, required double notaFinal})
      : _ra = ra,
        _nome = nome,
        _notaFinal = notaFinal;

  bool aprovado() => _notaFinal >= 6.0;

  void exibirBoletim() {
    print('-------------------------');
    print('RA:         $_ra');
    print('Nome:       $_nome');
    print('Nota Final: ${_notaFinal.toStringAsFixed(1)}');
    print('Situação:   ${aprovado() ? "Aprovado ✅" : "Reprovado ❌"}');
    print('-------------------------');
  }
}
