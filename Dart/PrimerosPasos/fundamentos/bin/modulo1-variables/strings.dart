void main(List<String> args) {
  //
  // String name = 'Jose';
  // final nombre = "David";
  // const texto = ''' 
  // con salto
  // de lineas
  // ''';

  //METODOS
  //--> parseo
  // int num = 3;
  // double decimal = 63.819111111;
  // String tres = num.toString();
  // String strDecimal = decimal.toStringAsFixed(5);
  
  String refran = ''' ya veremos dijo el ciego ''';
  print(refran.contains('ciegos'));//evalua si la variable contiene esa palabra 
  String email = 'santiagobulla1216@gmail.com';
  print(email.split('@'));//divide la cadena de caracteres tomando como medio el @
  print(email.split('@')[1]);//divide la cadena de caracteres tomando como medio el @ y devuelve la posicion 1 de la lista

//evaula si empieza-termina con un caracter 
  print(email.startsWith('s'));
  print(email.endsWith('s'));

  //posicion de un caracter dentro de un str
  print(email.indexOf('a'));
  //extrae una subcadena de un str
  print(email.substring(email.indexOf('@')));//(inicio, final),(inicio)
}