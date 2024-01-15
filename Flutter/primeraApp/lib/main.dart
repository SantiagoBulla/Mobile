import 'package:flutter/material.dart';
import 'package:primera_app/config/app_routes.dart';
import 'package:primera_app/pages/edit_profile_page.dart';

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
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}

