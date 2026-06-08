class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);
}

abstract class Informativo {
  void exibirInformacoes();
}

class LivroDigital extends Livro implements Informativo {
  double tamanhoArquivo;

  LivroDigital(String titulo, String autor, this.tamanhoArquivo)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Digital | $titulo - $autor | ${tamanhoArquivo.toStringAsFixed(1)} MB');
  }

  @override
  String toString() {
    return 'Digital | $titulo | $autor | ${tamanhoArquivo.toStringAsFixed(1)} MB';
  }
}

class LivroFisico extends Livro implements Informativo {
  int quantidadePaginas;

  LivroFisico(String titulo, String autor, this.quantidadePaginas)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Físico | $titulo - $autor | $quantidadePaginas páginas');
  }

  @override
  String toString() {
    return 'Físico | $titulo | $autor | $quantidadePaginas páginas';
  }
}

class Audiobook extends Livro implements Informativo {
  int duracaoMinutos;

  Audiobook(String titulo, String autor, this.duracaoMinutos)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Audiobook | $titulo - $autor | $duracaoMinutos minutos');
  }

  @override
  String toString() {
    return 'Audiobook | $titulo | $autor | $duracaoMinutos minutos';
  }
}
