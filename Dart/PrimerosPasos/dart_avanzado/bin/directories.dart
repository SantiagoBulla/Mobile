import 'dart:io';

void main(List<String> args) async {
  var dir = Directory(
      'C:/Users/57305/Documents/Mobile/Dart/recursos_aux'); //crear referencia a un directorio

  //Listar los elementos del directorio temporal del sistema
  // var tempDir = Directory.systemTemp;
  // await for (var directory
  //     in tempDir.list(recursive: false, followLinks: false)) {
  //   print(directory);
  // }

  //comprobar que existe un directorio
  bool existe = await dir.exists();
  print(existe
      ? 'Existe el directorio $existe'
      : 'No existe el directorio $existe');

  //listar los elementos de una carpeta
  var pathFolder = Directory('/');
  List<FileSystemEntity> lista = await pathFolder.list().toList();
  for (var element in lista) {
    print(element);
  }

  //crear una carpeta
  Directory(
          'C:/Users/57305/Documents/Mobile/Dart/recursos_aux/crearCarpetaConDart')
      .create();

  //borrar carpeta
  Directory(
          'C:/Users/57305/Documents/Mobile/Dart/recursos_aux/crearCarpetaConDart')
      .delete();
}
