// import 'package:fundamentos/fundamentos.dart' as fundamentos;

void main(List<String> arguments) {
  var nombre = 'Santiago';
  var edad = 18;
  // print('Mi nombre es' + nombre);
  print('Mi nombre es $nombre');//interpolacion a la hora de concatenar
  print(edad.runtimeType);//saber que tipo de variable es

  //PARSEO DE VARIABLES
  int cien = 100;
  String cincuenta = '50';
  int suma = cien + int.parse(cincuenta);
  print(suma);
  print('el valor es:$cien');
}
