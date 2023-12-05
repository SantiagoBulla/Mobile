class Meal {
  late String _descripcion;
  String get descripcion => _descripcion;

  set descripcion(String value) => _descripcion = value;
}

void main(List<String> args) {
  final meal = Meal();
  meal.descripcion = 'Pasta';//se inicializa en el momento en que se hace referencia a ese atributo
  print(meal.descripcion);
}
