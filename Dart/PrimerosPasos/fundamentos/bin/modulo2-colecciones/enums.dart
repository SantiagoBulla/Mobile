enum EstadosUsuarios { notLogged, logged, logging, registering }

void main(List<String> args) {
  var estadoActual = EstadosUsuarios.notLogged;

  print(estadoActual);
  //aqui pasa algo y se loguea

  estadoActual = EstadosUsuarios.logged;
  print(estadoActual);
}
