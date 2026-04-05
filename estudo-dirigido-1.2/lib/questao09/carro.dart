class Carro {
  String _modelo;
  int _quilometragem;

  Carro(this._modelo, this._quilometragem);

  void setQuilometragem(int km) => _quilometragem = km;
  int get quilometragem => _quilometragem;

  void exibir() {
    print('  Modelo:        $_modelo');
    print('  Quilometragem: $_quilometragem km');
  }
}

class Oficina {
  void revisar(Carro carro) {
    print('Realizando revisão e teste de rodagem...');
    carro.setQuilometragem(carro.quilometragem + 50);
  }
}

/*
  RESPOSTAS:

  a) Por que a quilometragem foi alterada mesmo sem retornar um novo objeto?
     Porque o parâmetro "carro" recebido por revisar() é uma referência ao mesmo
     objeto criado no main. Alterar _quilometragem via esse parâmetro modifica
     diretamente o objeto original.

  b) O parâmetro revisar() representa um novo carro ou o mesmo objeto?
     O mesmo objeto. Em Dart, objetos são passados por referência, então
     qualquer modificação feita dentro do método afeta o objeto original.
*/
