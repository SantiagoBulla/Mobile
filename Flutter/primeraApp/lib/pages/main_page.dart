import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:primera_app/components/bottom_navigation_item.dart';
import 'package:primera_app/config/app_icons.dart';
import 'package:primera_app/models/token.dart';
import 'package:primera_app/pages/home_page.dart';
import 'package:primera_app/pages/profile_page.dart';
import 'package:primera_app/styles/app_colors.dart';

//6:26:13
class MainPage extends StatefulWidget {
  final Token token;

  const MainPage({super.key, required this.token});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        // convierte el bottomNavigationBar en una especie de menu flotante y hace que el body nazca desde la raiz de la pantalla
        body: pages()[currentIndex.index],
        bottomNavigationBar: MyBottomNavigation(
          currentIndexIcon: currentIndex,
          onTap: (value) {
            //cuando se llamo el callback se trajo la opcion del menu = value y se ejcuto el setState
            setState(() {
              currentIndex = value;
            });
          },
        ));
  }

  pages() => [
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
        ProfilePage(token: widget.token),
      ];
}

enum Menus { home, favorite, add, messages, user }

class MyBottomNavigation extends StatelessWidget {
  final Menus currentIndexIcon;

  //Esto indica que onTap es una función que toma un argumento de tipo Menus y no devuelve nada.
  final ValueChanged<Menus> onTap;

  const MyBottomNavigation(
      //onTap es un callback que se recibe como argumento
      {super.key,
      required this.currentIndexIcon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            top: 17,
            right: 0,
            left: 0,
            child: Container(
              // contenedor de icons horizontal
              height: 60,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Row(
                children: [
                  // Expanded(
                  //   child: IconButton(
                  //     // a la accion clic se llama el callback onTap y se pasa como parametro el elemento del menu
                  //     onPressed: () => onTap(Menus.home),
                  //     icon: SvgPicture.asset(
                  //       AppIcons.icHome,
                  //       colorFilter: ColorFilter.mode(
                  //           currentIndexIcon == Menus.home
                  //               ? Colors.black
                  //               : Colors.black.withOpacity(0.3),
                  //           BlendMode.srcIn),
                  //     ),
                  //   ),
                  // ),
                  Expanded(
                    child: BottomNavigationItem(
                        onPressed: () => onTap(Menus.home),
                        icon: AppIcons.icHome,
                        current: currentIndexIcon,
                        name: Menus.home),
                  ),
                  Expanded(
                    child: BottomNavigationItem(
                        onPressed: () => onTap(Menus.favorite),
                        icon: AppIcons.icFavorite,
                        current: currentIndexIcon,
                        name: Menus.favorite),
                  ),
                  Spacer(),
                  Expanded(
                    child: BottomNavigationItem(
                        onPressed: () => onTap(Menus.messages),
                        icon: AppIcons.icMessage,
                        current: currentIndexIcon,
                        name: Menus.messages),
                  ),
                  Expanded(
                    child: BottomNavigationItem(
                        onPressed: () => onTap(Menus.user),
                        icon: AppIcons.icUser,
                        current: currentIndexIcon,
                        name: Menus.user),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: GestureDetector(
              //realiza la lectura de un clic para el icono
              onTap: () => (Menus.add),
              child: Container(
                  //contenedor del icon + para el circulo amarillo
                  height: 64,
                  width: 64,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppColors.primary, shape: BoxShape.circle),
                  child: SvgPicture.asset(AppIcons.icAdd)),
            ),
          ),
        ],
      ),
    );
  }
}
