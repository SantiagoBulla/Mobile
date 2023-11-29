import 'dart:collection';

void main(List<String> args) {
  //es inmutabele y solo se puede manipular el primer y ultimo elemento
  Queue cola = Queue();

  cola.add(10);
  cola.add(11);
  cola.add(13);
  cola.add(14);
  cola.add(15);

  print(cola);

  print(cola.isNotEmpty);
  print(cola.length);
  cola.removeWhere((element) => element == 11);
}
