class Usuario {
  String _nome;
  String _email;
  String _apelido;

  Usuario(this._nome, this._email, [String? apelido])
      : _apelido = apelido ?? _nome;

  // Correção: inicializa apelido corretamente
  factory Usuario.criar(String nome, String email, [String? apelido]) {
    return Usuario._interno(nome, email, apelido ?? nome);
  }

  Usuario._interno(this._nome, this._email, this._apelido);

  void exibirPerfil() {
    print('-------------------------');
    print('Nome:    $_nome');
    print('Email:   $_email');
    print('Apelido: $_apelido');
    print('-------------------------');
  }
}
