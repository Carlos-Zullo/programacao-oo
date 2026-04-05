class Televisao {
  int _canal;
  int _volume;

  Televisao(this._canal, this._volume);

  void setVolume(int v) => _volume = v;
  void setCanal(int c) => _canal = c;
  int get volume => _volume;
  int get canal => _canal;

  void exibir() {
    print('  Canal:  $_canal');
    print('  Volume: $_volume');
  }
}

class ControleRemoto {
  Televisao _tv;

  ControleRemoto(this._tv);

  void aumentarVolume() {
    if (_tv.volume >= 100) {
      print('Volume já está no máximo.');
      return;
    }
    _tv.setVolume(_tv.volume + 5);
    print('Volume aumentado para ${_tv.volume}.');
  }

  void diminuirVolume() {
    if (_tv.volume <= 0) {
      print('Volume já está no mínimo.');
      return;
    }
    _tv.setVolume(_tv.volume - 5);
    print('Volume diminuído para ${_tv.volume}.');
  }

  void proximoCanal() {
    _tv.setCanal(_tv.canal + 1);
    print('Canal mudado para ${_tv.canal}.');
  }

  void canalAnterior() {
    if (_tv.canal <= 1) {
      print('Já está no primeiro canal.');
      return;
    }
    _tv.setCanal(_tv.canal - 1);
    print('Canal mudado para ${_tv.canal}.');
  }
}

/*
  RESPOSTAS:

  a) Por que o controle remoto consegue alterar diretamente o estado da televisão?
     Porque o ControleRemoto guarda uma REFERÊNCIA para o objeto Televisao.
     Quando os métodos do controle chamam _tv.setVolume() ou _tv.setCanal(),
     estão modificando diretamente o objeto original.

  b) O controle remoto possui uma cópia da televisão ou uma referência?
     Uma referência. Isso fica evidente porque ao exibir o estado da tv após
     usar o controle, os valores já estão alterados — confirmando que é o mesmo objeto.
*/
