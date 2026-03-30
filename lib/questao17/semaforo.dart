class Semaforo {
  String corAtual;
  int tempoRestante;

  Semaforo(this.corAtual, this.tempoRestante) {
    if (!['vermelho', 'verde', 'amarelo'].contains(corAtual)) {
      throw ArgumentError('Cor inválida. Use: vermelho, verde ou amarelo.');
    }
  }

  String _emoji() {
    switch (corAtual) {
      case 'vermelho': return '🔴';
      case 'verde':    return '🟢';
      case 'amarelo':  return '🟡';
      default:         return '';
    }
  }

  int _tempoDaCor(String cor) {
    switch (cor) {
      case 'vermelho': return 5;
      case 'verde':    return 4;
      case 'amarelo':  return 2;
      default:         return 0;
    }
  }

  void trocarCor() {
    switch (corAtual) {
      case 'vermelho': corAtual = 'verde'; break;
      case 'verde':    corAtual = 'amarelo'; break;
      case 'amarelo':  corAtual = 'vermelho'; break;
    }
    tempoRestante = _tempoDaCor(corAtual);
    print('🔄 Cor trocada para: ${_emoji()} $corAtual (tempo: $tempoRestante)');
  }

  void reduzirTempo() {
    if (tempoRestante > 0) {
      tempoRestante--;
    }
    if (tempoRestante == 0) {
      trocarCor();
    }
  }

  void exibirEstado() {
    print('-------------------------');
    print('Cor:            ${_emoji()} $corAtual');
    print('Tempo restante: $tempoRestante');
    print('-------------------------');
  }
}
