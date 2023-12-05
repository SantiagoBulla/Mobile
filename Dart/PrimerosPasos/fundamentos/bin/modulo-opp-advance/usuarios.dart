import 'persona.dart';

class Usuarios extends Persona {
  String nickname;
  String password;

  Usuarios(String nombre, this.nickname, this.password) : super(nombre);
}
