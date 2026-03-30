import 'playlist.dart';

void main() {
  Musica m1 = Musica('Bohemian Rhapsody', 'Queen', 354);
  Musica m2 = Musica('Hotel California', 'Eagles', 391);
  Musica m3 = Musica('Stairway to Heaven', 'Led Zeppelin', 482);

  Playlist p = Playlist('Clássicos do Rock', m1, m2, m3);

  p.exibirPlaylist();
  p.tocarPlaylist();
}
