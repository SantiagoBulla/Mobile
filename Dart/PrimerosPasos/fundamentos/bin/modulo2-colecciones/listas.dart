void main(List<String> args) {
  //listas
  var lista1 = [1,14];
  var lista2 = ['luis','luciana'];
  //matriz
  var lista3 = [
    [89,100],
    lista2,
    [lista1,899]
  ];
  print(lista3[1][0]);
  print(lista1[1]);
  print(lista2.length);
  //añadir elementos a la lista
  lista2.add('Daniel');
  print(lista2);
  lista1.addAll([1,2,3,4]);
  lista2.addAll(['anna','michel','tony']);
  print(lista1);
  print(lista2);
  //posiciones
  print(lista2.last);//ultimo elemento
  print(lista2.first);
  print(lista2.asMap());//transforma la lista en mapa


  //listas fijas (tamaño,valores,modificable)
  var listaFija = List.filled(10,'',growable: true);
  listaFija[1]= lista2[0];
  print(listaFija);

}