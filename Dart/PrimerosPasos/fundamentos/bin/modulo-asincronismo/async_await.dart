void main(List<String> args) async {
  print( await getUsersData());
  print('Se esta obteniendo la data de los usuarios');
}

Future<String> crearLlamada() async {
  String datos = await getUsersData();
  return datos;
}

Future<String> getUsersData() => 
    Future.delayed(Duration(seconds: 5), (() => 'Data lista'));
