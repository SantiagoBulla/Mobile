void main(List<String> args) {
  int rta = factorial(5);
  print('factorial de 5 es $rta');
}

int factorial(int num) {
  if (num == 1) {
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}
