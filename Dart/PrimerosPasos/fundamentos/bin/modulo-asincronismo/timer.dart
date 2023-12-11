import 'dart:async';

void main(List<String> args) {
  int ctdr = 5;
  Timer(Duration(seconds: 3), (() => {print('Me ejecucto a los 3 segundos')}));
  print('Me ejecuto primero');
  Timer.periodic(Duration(seconds: 2), (timer) {
    if (ctdr == 0) {
      timer.cancel();
    }
    print(DateTime.now());
    ctdr--;
  });
}
