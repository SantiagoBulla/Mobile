void main(List<String> args) {
  getUsersData();
  print('Se esta obteniendo la data de los usuarios');
}

Future<void> getUsersData() =>
    Future.delayed(Duration(seconds: 5), (() => print('Data lista')));
