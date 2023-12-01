import 'dart:io';

void main(List<String> args) {
  while (true) {
    String? linea = stdin.readLineSync();

    if (linea.toString().startsWith('#')) {
      continue; //devuelve el ciclo al inicio del while
    } else if (linea == 'fin') {
      break;
    }

    print('repito lo que dices: $linea');
  }

  print('Entra al for');
  int control = 0;
  for (int i = 0; i < 10; i++) {
    print(i);
    control++;
  }
  print('control vale $control');

  for (var i = control; i > 0; i--) {
    print('control  vale $i');
  }

  var lista = ['juan', 'danilo', 'mario', 'jose'];
  for (var nombre in lista) {
    print('Hola $nombre, mucho gusto me llamo santiago');
  }
}
