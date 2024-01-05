import 'package:flutter/material.dart';
import 'package:primera_app/login_page.dart';

/// Flutter code sample for [Scaffold].

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

void hello() {
  print('hello');
}
