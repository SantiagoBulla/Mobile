import 'dart:math';

void main(List<String> args) {
  var lista = [11, 24, 67, 2, 355, 7];

  var maximo = 0;
  var minimo = lista[0];

  //valor maximo
  for (var numero in lista) {
    if (maximo < numero) {
      maximo = numero;
    }
  }
  print("El valor maximo en la lista de numeros es $maximo");

  //valor minimo
  for (var numero in lista) {
    if (minimo > numero) {
      minimo = numero;
    }
  }
  print("El valor minimo en la lista de numeros es $minimo");

  //otra manera con libreria
  print(lista.reduce(min));
  print(lista.reduce(max));
}
