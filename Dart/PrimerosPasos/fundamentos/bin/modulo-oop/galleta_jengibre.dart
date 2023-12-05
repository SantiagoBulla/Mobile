class GalletaDeJengibre {
  //atributos de clase
  String name;
  int _edad;
  bool? dulce;

  //constructor
  GalletaDeJengibre(this.name, this._edad);

  //constructor opcional
  GalletaDeJengibre.sinAzucar(this.name, this._edad, {this.dulce});

  //setters y getters
  String get getName => name;

  set setName(String name) => this.name = name;

  get getEdad => _edad;

  set edad(value) => _edad = value;

  get getDulce => dulce;

  set setDulce(dulce) => this.dulce = dulce;
}
