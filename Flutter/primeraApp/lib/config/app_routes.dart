import 'package:primera_app/models/token.dart';
import 'package:primera_app/pages/edit_profile_page.dart';
import 'package:primera_app/pages/home_page.dart';
import 'package:primera_app/pages/login_page.dart';
import 'package:primera_app/pages/main_page.dart';
import 'package:primera_app/pages/nearby_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => LoginPage(),
    home: (context) => HomePage(),
    main: (context) =>  MainPage(token: Token('asfsf')),
    editProfile: (context) =>  EditProfilePage(),
    nearby: (context) =>  NearByPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
}
