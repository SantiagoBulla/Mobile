import 'package:flutter/material.dart';
import 'package:primera_app/pages/home_page.dart';
import 'package:primera_app/pages/login_page.dart';
import 'package:primera_app/pages/main_page.dart';
import 'package:primera_app/styles/app_colors.dart';

/// Flutter code sample for [Scaffold].

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.background,
          brightness: Brightness.dark),
      //3:10:16
      home: LoginPage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}

