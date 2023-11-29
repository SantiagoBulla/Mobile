void main(List<String> args) {
  //'lista' desordenada de elementos del mismo tipo y no se pueden repetir
  var setUno = <String>{'luis','lucia','luciana','maximo'};
  print(setUno);
  setUno.add('jose');
  setUno.add('luis');//omite esta insercion porque luis ya esta en el set
  print(setUno);

  print(setUno.elementAt(2));//acceder a un elemento
  print(setUno.length);//tamaño
  print(setUno.remove('jose'));
  print(setUno);
}