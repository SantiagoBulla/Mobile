void main(List<String> args) {
  Cafe cafe = Cafe();
  cafe.calentar();
  print(cafe.servir());
}


class Cafe {
  //Con LATE dart evalua si _temperatura es null o no pero cuando se ejecucta
  late String _temperature;//es un str pero su asiganacion se hara despues

  void calentar(){
    _temperature = 'Caliente';
  }

  void Enfriar(){
    _temperature = 'Frio';
  }

  String prepararCafe() {
    return 'Caliente';
  }

  String servir() => 'Aqui esta su cafe $_temperature';
}