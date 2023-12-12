import 'dart:math';

void main(List<String> args) {
  //constante
  var PI = pi;
  var raizDos = sqrt2;
  print(raizDos);

  var arCirculo = (pi * (2 * 2));

  //raiz cuadrada
  var num = sqrt(64);
  print(num);

  //random
  print(Random().nextInt(10)); //numero no negativo de max 10
  print(Random().nextDouble()); //numero no negativo, distribuido entre 0 y 1
  print(Random().nextDouble() * 100); //numero double entre 0 y 100
  print(Random().nextBool()); //entre true y false

  //point --> puntos en el espacio
  var punto1 = Point(0, 0);
  var punto2 = Point(100, 700);
  print(punto2.distanceTo(punto1));

  //rectangulo
  var rectangulo = Rectangle(20, 50, 300, 600);
  print(rectangulo.height);

  //max y min
  print(max(88000, 88000.01));//el max entre dos numero
  print(min(6, 5.9991));//el min entre dos numero
}
