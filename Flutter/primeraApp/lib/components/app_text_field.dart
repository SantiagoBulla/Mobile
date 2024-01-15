import 'package:flutter/material.dart';
import 'package:primera_app/styles/app_colors.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        labelStyle: TextStyle(
          color: AppColors.white
        ),
        border: const UnderlineInputBorder( // el label pasa al top del field y no se pierde cuando hay focus
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide.none //quita el borde
        ),
        filled: true,
        fillColor: AppColors.fieldColor,
      ),
    );
  }
}
