void main(List<String> args) {
  var lista = [1, 2, 3, 4, 5, 67, 8, 8, 9];
  print('Lista original: $lista');
  print('Cuadrados de los numeros de la lista: ${valoresCuadrados(lista)}');
}

List valoresCuadrados(List numeros) {
  var listaCuadrados = [];
  for (var element in numeros) {
    listaCuadrados.add(element * element);
  }
  return listaCuadrados;
}
