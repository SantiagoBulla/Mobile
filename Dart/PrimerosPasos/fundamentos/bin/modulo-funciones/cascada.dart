void main(List<String> args) {
  var listaA = [3];
  listaA.add(1);
  listaA.add(2);
  listaA.add(24);
  listaA.forEach((element) {
    print(element);
  });

  var listaB = [];
  listaB
    ..add(2)
    ..add(3)
    ..add(6);

  listaB.forEach(print);
}
