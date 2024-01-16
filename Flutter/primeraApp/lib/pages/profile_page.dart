import 'package:flutter/material.dart';
import 'package:primera_app/components/toolbar.dart';
import 'package:primera_app/components/user_avatar.dart';
import 'package:primera_app/config/app_routes.dart';
import 'package:primera_app/models/token.dart';
import 'package:primera_app/styles/app_colors.dart';
import 'package:primera_app/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  final Token token;
  const ProfilePage({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  print('logout');
                  break;
              }
            },
            icon: const Icon(Icons.settings_outlined),
            //definir el icon del popupmenubutton
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('Edit'),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text('Log out'),
                  value: ProfileMenu.logout,
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          UserAvatar(
            size: 90,
          ),
          Text(
            'Julieth Herrera',
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            token.token,
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //ALINEACION DE LOS ELEMENTOS DE LA COLUMNA AL CENTRO
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
          Divider(
            thickness: 1,
            height: 24,
          ),
          //3:39:00
        ],
      ),
    );
  }
}
