void main(List<String> args) {
  //variables nulables con ?
  String? apellido = obtenerApellido('David Bulla');
  print(apellido);

  //se le indica a dart que la variable puedeTenerValor si o si va a tener valor con el operador ! assertion
  int? puedeTenerValor;
  int valor = puedeTenerValor!;
  print(valor);
}

String? obtenerApellido(String fullName) {
  var apellido = fullName.split(' ');
  return apellido.length > 1 ? apellido[1] : null;
}
