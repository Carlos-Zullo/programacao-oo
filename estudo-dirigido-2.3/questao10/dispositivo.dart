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
  void ligar() => print('📱 $marca $modelo ligando com $sistemaOperacional...');

  @override
  void desligar() => print('📱 $marca $modelo desligando...');

  @override
  String toString() => 'Smartphone | $marca $modelo | Sistema: $sistemaOperacional';
}

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String marca, String modelo, this.memoriaRam)
      : super(marca, modelo);

  @override
  void ligar() => print('💻 $marca $modelo ligando com ${memoriaRam}GB de RAM...');

  @override
  void desligar() => print('💻 $marca $modelo desligando...');

  @override
  String toString() => 'Notebook | $marca $modelo | RAM: ${memoriaRam}GB';
}

class Televisao extends Dispositivo implements Ligavel {
  int tamanhoPolegadas;

  Televisao(String marca, String modelo, this.tamanhoPolegadas)
      : super(marca, modelo);

  @override
  void ligar() => print('📺 $marca $modelo ligando (${tamanhoPolegadas}")...');

  @override
  void desligar() => print('📺 $marca $modelo desligando...');

  @override
  String toString() => 'Televisão | $marca $modelo | $tamanhoPolegadas polegadas';
}
