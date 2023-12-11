import 'dart:isolate';

void main() async {
  contarSegundos(4);
  await imprimirDatosUsuario();
}

Future<void> imprimirDatosUsuario() async {
  print('Esperandos datos usuario');
  try {
    final p  = ReceivePort();
    Isolate.spawn(obtenerDatosUsuario, p.sendPort);
    print(await p.first);
  } catch (e) {
    print(e.toString());
  }
}

Future<void> obtenerDatosUsuario(SendPort p) async => Future.delayed(
    Duration(seconds: 4), (() {
      print('data desde la isla');
      Isolate.exit(p,'data desde la main isla');
    }));

//-------------
void contarSegundos(int segundos) {
  for (int i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
