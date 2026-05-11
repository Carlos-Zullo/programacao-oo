class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);
}

abstract class Ligavel {
  void ligar();
  void desligar();
}

class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional)
      : super(marca, modelo);

  @override
  void ligar() {
    print('📱 $marca $modelo ligando com $sistemaOperacional...');
    print('Bem-vindo!');
  }

  @override
  void desligar() {
    print('📱 $marca $modelo desligando...');
    print('Até logo!');
  }
}

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String marca, String modelo, this.memoriaRam)
      : super(marca, modelo);

  @override
  void ligar() {
    print('💻 $marca $modelo ligando com ${memoriaRam}GB de RAM...');
    print('Carregando sistema...');
  }

  @override
  void desligar() {
    print('💻 $marca $modelo desligando...');
    print('Salvando dados...');
  }
}
