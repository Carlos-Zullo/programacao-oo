class Contato {
  String _nome;
  String _telefone;

  Contato(this._nome, this._telefone);

  String get nome => _nome;

  void exibir() {
    print('  📞 $_nome: $_telefone');
  }
}

class Agenda {
  List<Contato> _contatos;

  // Construtor vazio
  Agenda.vazia() : _contatos = [];

  // Construtor com contatos iniciais
  Agenda.comContatos(List<Contato> contatos) : _contatos = contatos;

  void adicionarContato(Contato contato) {
    _contatos.add(contato);
    print('Contato ${contato.nome} adicionado.');
  }

  void removerContatoPorNome(String nome) {
    int antes = _contatos.length;
    _contatos.removeWhere((c) => c.nome == nome);
    if (_contatos.length < antes) {
      print('Contato $nome removido.');
    } else {
      print('Contato $nome não encontrado.');
    }
  }

  void listarContatos() {
    if (_contatos.isEmpty) {
      print('  Agenda vazia.');
      return;
    }
    for (var contato in _contatos) {
      contato.exibir();
    }
  }
}

/*
  RESPOSTAS:

  a) Qual a diferença prática entre agenda vazia e agenda já com contatos?
     Agenda.vazia() começa com lista vazia — útil quando os contatos serão
     adicionados depois. Agenda.comContatos() já inicia populada — útil quando
     os dados já estão disponíveis na criação.

  b) Quando a lista é passada ao construtor, os contatos são recriados ou
     a agenda usa as referências recebidas?
     A agenda usa as referências recebidas. Os objetos Contato não são
     recriados — a lista passada é atribuída diretamente, então alterações
     nos objetos originais também afetariam os contatos da agenda.
*/
