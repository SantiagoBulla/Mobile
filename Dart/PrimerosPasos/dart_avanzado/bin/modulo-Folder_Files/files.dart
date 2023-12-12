import 'dart:convert';
import 'dart:io';

void main() async {
  String? line2;
  //LEER ARCHIVOS
  final file =
      File('C:/Users/57305/Documents/Mobile/Dart/recursos_aux/file.txt');
  Stream<String> lines =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());
  try {
    await for (var line in lines) {
      print('$line, longitud: ${line.length}');
      line2 = line;
    }
  } catch (e) {
    print(e.toString());
  }

  //ESCRIBIR ARCHIVOS
  String path = 'C:/Users/57305/Documents/Mobile/Dart/recursos_aux/file.txt';
  await File(path).writeAsString(line2!.toString().toUpperCase());

  //---- segunda manera
  String path2 = 'C:/Users/57305/Documents/Mobile/Dart/recursos_aux/file2.txt';
  var escribir = File(path2);
  var openWrite = escribir.openWrite();
  openWrite.write('hola amiguitos');
  openWrite.close();

  //BORRAR ARCHIVOS
  file.delete();
}
