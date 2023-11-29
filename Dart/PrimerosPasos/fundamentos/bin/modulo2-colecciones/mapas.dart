void main(List<String> args) {
  var mapa1 = {
    'nombre': 'david',
    'apellido': 'bulla',
    'edad': 18,
    'profesion': 'estudiante',
  };
  print(mapa1['nombre']); //devuelve el valor de la clave nombre

  //añadir elementos
  mapa1['ciudad'] = 'Bogotá';
  print(mapa1);
  mapa1['nombre'] = 'santiago'; //se sobreescribe
  print(mapa1);
}
