import 'package:flutter/material.dart';
import 'package:primera_app/styles/app_colors.dart';
import 'package:primera_app/styles/app_text.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final List<Widget>? actions; //es un elemento nulable

  const Toolbar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      foregroundColor: AppColors.white,
      // don't use
      title: Text(title, style: AppText.header1,),
      centerTitle: false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64); // se define que la altura del appBar es 64
}
