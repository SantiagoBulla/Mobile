class UserPicture {
  final String large;
  final String medium;
  final String thumbnail;

  UserPicture(
      {required this.large, required this.medium, required this.thumbnail});

  /*
  * factory es un tipo de constructor de clase que permite crear instanciasa través de un mapa.
  * fromMap toma los valores del mapa y los asigna a los atributos de clase de la instancia que se quiere crear
  * luego el metodo como tal retorna la nueva instancia creada
  * */
  factory UserPicture.fromMap(Map<String, dynamic> e) {
    return UserPicture(
      large: e['large'],
      medium: e['medium'],
      thumbnail: e['thumbnail'],
    );
  }
}
