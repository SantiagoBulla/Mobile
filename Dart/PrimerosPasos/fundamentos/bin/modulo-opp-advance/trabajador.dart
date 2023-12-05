import 'persona.dart';
import 'paseante.dart';

class Trabajador extends Persona implements Paseante{
  double salario;
  Trabajador(String nombre, this.salario) : super(nombre);

  //SOBRECARGA DE METODOS
  String hablar(String plaabras) {
    return '${super.hablar(plaabras)} y ademas dice sociedad capitalista';
  }
  
  //implementa una interfaz
  @override
  void caminar() {
    print('Camino como un trabajador');
  }
}
