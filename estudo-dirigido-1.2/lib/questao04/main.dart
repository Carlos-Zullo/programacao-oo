import 'usuario.dart';

void main() {
  // Com apelido informado
  Usuario u1 = Usuario.criar('Maria Oliveira', 'maria@email.com', 'Mari');

  // Sem apelido — usa o próprio nome
  Usuario u2 = Usuario.criar('João Pedro', 'joao@email.com');

  u1.exibirPerfil();
  u2.exibirPerfil();
}
