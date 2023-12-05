//LOS ITERABLES NO SE PUEDE ACCEDER A SU POSICION CON UN INDICE [2]...

void main(List<String> args) {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7];
  // Iterable<int> iterables = [1,2,3,4,5,6,7];
  Iterable<int> iterable = numeros;
  Iterable<String> alimentos = ['papa', 'arroz', 'aceite', 'tomate'];
  print(iterable.elementAt(3));
  print(alimentos.last);

  var elemento = alimentos.firstWhere((element) => element.startsWith('t'),
      orElse: () => 'No existe nada que empiece con t');
  print(elemento);

  String arroz = alimentos.singleWhere(
      (element) => element.contains('z') && element.startsWith('a'),
      orElse: () => 'alimento no econtrado');
  print(arroz);

  //validacion para cada uno de los elementos del iterable
  print(alimentos.every((element) =>
      element.length >=
      5)); //todos los elementos deben ser mayor a 5 de longitud

  //devuelve true si almenos 1 de los elementos cumple la condicion
  print(alimentos.any((element) => element.length >= 6));

  User jaime = User('Jaime', 18);
  User mario = User('Mario', 19);
  User daniela = User('Daniela', 12);

  Iterable<User> users = [jaime, mario, daniela];
  bool mayoresEdad = users.every((element) => element.edad >= 18);
  mayoresEdad
      ? print('Todos son mayores de edad')
      : print('Por lo menos uno es menor de edad');

  for (var user in users) {
    if (user.edad >= 18) {
      print('${user.name}, usted es mayor de edad');
    } else {
      print('${user.name}, usted NO es mayor de edad');
    }
  }

  //devuelve todos los elementos que cumplan una condicion
  var impares = numeros.where((element) => element.isOdd);
  for (var impar in impares) {
    print(impar);
  }

  Iterable numbers = [1,-4,22,8, 13];
  //nuemeros pares y de os que obtenga detecte si algunos es negativo
  var pares = numbers.where((numero) => numero.isEven);
  if(pares.any((element) => element.isNegative)){
    print('Uno es negativo');
  }

  Iterable cuadrados = numbers.map((e) => e*2);
  print('Los cuadrados de los numeros: $numbers son : $cuadrados');

  Iterable infoUsers = users.map((user) => '${user.name} tiene ${user.edad} años');
  print(infoUsers);
}

class User {
  String _name;
  int _edad;

  get name => _name;

  set name(value) => _name = value;

  get edad => _edad;

  set edad(value) => _edad = value;

  User(this._name, this._edad);
}
