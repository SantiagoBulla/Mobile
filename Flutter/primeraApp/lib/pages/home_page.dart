import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:primera_app/components/post_item.dart';
import 'package:primera_app/components/toolbar.dart';
import 'package:primera_app/config/app_icons.dart';
import 'package:primera_app/config/app_routes.dart';
import 'package:primera_app/styles/app_colors.dart';
import 'package:primera_app/styles/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    getUsersHttp();
    return Scaffold(
        appBar: Toolbar(
          title: '5minutesflutter',
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.nearby);
                },
                icon: SvgPicture.asset(AppIcons.icLocation))
          ],
        ),
        //el appbar es un preferredSizeWidget por lo que Toolbar debe implemnetar esta clase
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
