void main(List<String> args) {
  holaMundo();
  print(amor('Santi'));
  print(areaCuadrado(2.5));
}

void holaMundo() => print('Hola mundo');
String amor(String nombre) => 'Te amo $nombre';
double areaCuadrado(double lado) => lado * lado;
