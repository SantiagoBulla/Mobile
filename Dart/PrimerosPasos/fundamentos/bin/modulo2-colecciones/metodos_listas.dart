void main(List<String> args) {
  //crear lista
  List lista = [1, 23, 567, 674, 2234, 1560, 3, 23];
  print(lista);

  lista.clear(); //limpiar lista
  lista.first(); //obtener el primer valor de la lista
  lista.last(); //obtener el ultimo valor de la lista
  lista.length; //obtener el tamaño
  lista.reversed; //cambiar el orden de la lista
  lista.sublist(4,
      6); //obtener un trozo de la lista (posicion de empezar, para terminar {opcional})
  lista.removeLast(); //eliminar el ultimo valor
  lista.remove(2234); //elimar un elemento por su valor
  lista.removeAt(3); //eliminar elemento por indice
  lista.indexOf(2234); //obtener el indice de un valor
  lista.contains(4); //comprobar si contiene un valor
  lista.isEmpty; //comprueba si esta vacia {true - false}
  lista.join(
      '-'); //convierte la lista en str y la une por el parametro que reciba
  lista.lastIndexOf(23); //devuelve el ultimo indice del elemento solicitado
  lista.fillRange(3, 6,
      10); //rellena la lista dentro de un rango de valores {inicio del relleno, final del relleno, valor con el que se va a rellenar}
  lista.runtimeType; //devulve el tipo de dato
}
