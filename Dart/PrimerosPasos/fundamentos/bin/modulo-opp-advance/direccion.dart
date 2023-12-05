class Direccion {
  String _prefijo;
  String _numero;
  String _adicional;

  Direccion(this._prefijo, this._numero, this._adicional);

  String get prefijo => this._prefijo;

  set prefijo(String value) => this._prefijo = value;

  get numero => this._numero;

  set numero(value) => this._numero = value;

  get adicional => this._adicional;

  set adicional(value) => this._adicional = value;

  String mostrarDireccion(){
    return '$_prefijo $_numero $_adicional';
  }
}
