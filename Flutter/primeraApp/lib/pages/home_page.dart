import 'package:flutter/material.dart';
import 'package:primera_app/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
        // don't use
        title: Text('Titulo appbar'),
        centerTitle: false,
        actions: const [
          Icon(Icons.person_2_outlined),
        ],
      ),
      body: ListView(children: getUsersHttp(),)
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          'assets/temp/user1.png',
          height: 50,
          width: 50,
        ),
        SizedBox(width: 16),
        Text('Sarah Fernandez'),
      ],
    );
  }

  List<Widget> getUsersHttp() {
    List<Widget> users = [];
    for (var i = 0; 1 < 20; i++) {
      users.add(_userItem());
    }
    return users;
  }
}
