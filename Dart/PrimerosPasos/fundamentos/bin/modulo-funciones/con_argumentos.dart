void main(List<String> args) {
  print('El area calculada es: ${calcularArea(4.92, 23.15)}');
  identificacion('David ', 'Bulla', 18);
  identificacion2('Santiago', 'Perez', anoNacimiento: 2005, edad: 18);
}

//con argumentos obligatorios
double calcularArea(double ladoA, double ladoB) {
  double area = ladoA * ladoB;
  return area;
}

//con argumentos opcionales

//POR POSICION
void identificacion(String nombre, String apellido,
    [var edad, var anoNacimiento]) {
  if (edad != null) {
    print('Hola $nombre $apellido, tienes una edad de $edad');
  } else {
    print('Hola $nombre $apellido y no conocemos tu edad');
  }
}

//POR NOMBRE
void identificacion2(String nombre, String apellido,
    {var edad, var anoNacimiento}) {
  if (edad == null) {
    print('Hola $nombre $apellido y no conocemos tu edad');
  } else {
    print('Hola $nombre $apellido, tienes una edad de $edad porque naciste en $anoNacimiento');
  }
}
