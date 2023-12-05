import 'direccion.dart';

class Persona {
  String _nombre;
  int? edad;
  String? telefono;
  Direccion? direccion;

  Persona(this._nombre, {this.edad, this.telefono, this.direccion});

  String get nombre => _nombre;

  set nombre(String value) => _nombre = value;

  String hablar(String palabras) {
    return '$_nombre habla y dice: $palabras';
  }
}
