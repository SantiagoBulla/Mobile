import 'direccion.dart';
import 'persona.dart';
import 'trabajador.dart';
import 'trabajador_extension.dart';

void main(List<String> args) {
  Persona luis = Persona('Luis');
  Trabajador pedro = Trabajador('pedro', 2000000);
  pedro.telefono = '321458585';
  Direccion direccion = Direccion('Calle', '723', 'Sur');
  pedro.direccion = direccion;
  print(pedro.direccion!.mostrarDireccion());

  print(luis.hablar('Gondola'));
  print(pedro.hablar('Gondola'));
  pedro.caminar();
  print(
      '${pedro.nombre} tiene un salario de COP de ${pedro.salario}, pero en dolares es de: ${pedro.salirioDolares(pedro.salario).toStringAsFixed(2)}');
}
