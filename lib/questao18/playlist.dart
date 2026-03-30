class Musica {
  String titulo;
  String artista;
  int duracaoSegundos;

  Musica(this.titulo, this.artista, this.duracaoSegundos) {
    if (titulo.isEmpty) throw ArgumentError('O título não pode ser vazio.');
    if (artista.isEmpty) throw ArgumentError('O artista não pode ser vazio.');
    if (duracaoSegundos <= 0) throw ArgumentError('A duração deve ser maior que 0.');
  }

  String _formatarDuracao() {
    int min = duracaoSegundos ~/ 60;
    int seg = duracaoSegundos % 60;
    return '${min.toString().padLeft(2, '0')}:${seg.toString().padLeft(2, '0')}';
  }

  void exibir() {
    print('  🎵 $titulo - $artista (${_formatarDuracao()})');
  }
}

class Playlist {
  String nome;
  Musica musica1;
  Musica musica2;
  Musica musica3;

  Playlist(this.nome, this.musica1, this.musica2, this.musica3) {
    if (nome.isEmpty) throw ArgumentError('O nome da playlist não pode ser vazio.');
  }

  int calcularDuracaoTotal() {
    return musica1.duracaoSegundos + musica2.duracaoSegundos + musica3.duracaoSegundos;
  }

  void exibirPlaylist() {
    print('=========================');
    print('🎧 Playlist: $nome');
    print('Músicas:');
    musica1.exibir();
    musica2.exibir();
    musica3.exibir();
    int total = calcularDuracaoTotal();
    int min = total ~/ 60;
    int seg = total % 60;
    print('Duração total: ${min.toString().padLeft(2, '0')}:${seg.toString().padLeft(2, '0')}');
    print('=========================');
  }

  void tocarPlaylist() {
    print('▶️  Tocando playlist: $nome');
    print('  ▶️  Tocando: ${musica1.titulo} - ${musica1.artista}');
    print('  ▶️  Tocando: ${musica2.titulo} - ${musica2.artista}');
    print('  ▶️  Tocando: ${musica3.titulo} - ${musica3.artista}');
    print('⏹️  Playlist finalizada!');
  }
}
