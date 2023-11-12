
void main(List<String> args) {
  //Declaracion de variables
  String texto;
  //Asignacion de variables
  texto = 'Estoy estudiando Dart';

  //Strings
  String name  = 'Luis';
  
  //Enteros
  int edad = 18;

  //Double
  double numero = 1.78;

  //Boolean
  bool verdadero = true;
  bool falso = false;

  //CONSTANTES
  const pi = 3.1416; //se declara en tiempo de compilacion y no depende de nada

  final nombreRecuperadoPorConsola = 'funcionRecuperarNombre()';//sera constante una vez se asigne el valor, y esta asignacion es en tiempo de ejecucion, es decir, cuando el programa se esta ejecutando

  print("$texto y $name y $edad y $numero y $verdadero y $falso y $pi $nombreRecuperadoPorConsola");
}