import 'package:flutter/material.dart';
import 'package:primera_app/components/post_item.dart';
import 'package:primera_app/styles/app_colors.dart';
import 'package:primera_app/styles/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    getUsersHttp();
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
        body: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem(user: users[index]);
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 24,
            );
          },
          itemCount: users.length,
        ));
  }

  getUsersHttp() {
    for (var i = 0; i < 100; i++) {
      users.add('user number $i');
    }
  }
}
