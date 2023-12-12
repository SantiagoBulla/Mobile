import 'dart:io';

import 'package:csv/csv.dart';

void main() async {
  List<List<dynamic>> listaEjemplo = [];
  for (var i = 0; i < 10; i++) {
    listaEjemplo.add([]);
    for (var j = 0; j < 10; j++) {
      if (i == 0) {
        listaEjemplo[i].add('Columna ${j.toString()}');
      } else {
        listaEjemplo[i].add(j);
      }
    }
  }

  String csv = const ListToCsvConverter().convert(listaEjemplo);
  Directory directory =
      Directory('C:/Users/57305/Documents/Mobile/Dart/recursos_aux');
  final pathFile = '${directory.path}/miCSV.csv';
  File file = await File(pathFile);
  file.writeAsString(csv);
}
