import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:primera_app/pages/home_page.dart';
import 'package:primera_app/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int focusIcon = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[focusIcon],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_home.svg'), label: 'home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_favorite.svg'),
              label: 'favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_messages.svg'),
              label: 'add post '),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_messages.svg'),
              label: 'messages '),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_user.svg'), label: 'user '),
        ],
        currentIndex: focusIcon,
        onTap: (index) {
          setState(() {
            focusIcon = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        // cuando un icono esta seleccionado no permite que este se desplace hacia otros lados
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.amber,
        //min 2:53:47
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('favorite'),
    ),
    Center(
      child: Text('Add post'),
    ),
    Center(
      child: Text('Message'),
    ),
    ProfilePage(),
  ];
}
