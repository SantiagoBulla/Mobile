import 'galleta_jengibre.dart';

void main(List<String> args) {
  GalletaDeJengibre galleta =
      GalletaDeJengibre('Tom', 18); //obj de tipo GalletaDeJengibre

  print(galleta.getName);
  print(galleta.getEdad);
  print(galleta.getDulce);

  GalletaDeJengibre jerry =
      GalletaDeJengibre.sinAzucar('Jerry', 50, dulce: true);
  print(jerry.dulce);
}
