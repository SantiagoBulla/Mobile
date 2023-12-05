void main(List<String> args) {
  List uno = [
    1,
    2,
    true,
    'String',
    4.2,
    [11, 'True', false]
  ];
  print(uno);

  List<int> numeros = [];
  numeros.add(2);
  numeros.add(22);
  numeros.add(222);
  print(numeros);

  Set<String> words = {};
  words
    ..add('cuaderno')
    ..add('lapiz')
    ..add('mouse');

  Map<int, String> jugadores = {
    10: 'Leo Messi',
    7: 'CR7',
    9: 'Falcao',
    11: 'Cuadrado'
  };
  jugadores.forEach((key, value) {print(value);});
}
