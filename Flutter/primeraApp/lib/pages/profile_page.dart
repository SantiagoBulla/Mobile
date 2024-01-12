import 'package:flutter/material.dart';
import 'package:primera_app/styles/app_colors.dart';
import 'package:primera_app/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/temp/user1.png',
            height: 90,
            width: 90,
          ),
          Text(
            'Julieth Herrera',
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Colombia',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, //ALINEACION DE LOS ELEMENTOS DE LA COLUMNA AL CENTRO
            children: [
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '119',
                    style: AppText.header2,
                  ),
                  Text('Posts'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '856',
                    style: AppText.header2,
                  ),
                  Text('Following'),
                ],
              ),
            ],
          ),
          Divider(thickness: 1, height: 24,),
          //3:39:00
        ],
      ),
    );
  }
}
