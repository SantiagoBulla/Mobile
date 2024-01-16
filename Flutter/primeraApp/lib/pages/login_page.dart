import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:primera_app/config/app_icons.dart';
import 'package:primera_app/config/app_routes.dart';
import 'package:primera_app/config/app_strings.dart';
import 'package:http/http.dart' as http;
import 'package:primera_app/models/token.dart';
import 'package:primera_app/pages/main_page.dart';

const baseURL = 'https://reqres.in';

class LoginPage extends StatelessWidget {
  final loginRoute = '$baseURL/api/login';
  final usernameController = TextEditingController();

  // final passwordController = TextEditingController();
  var password = '';

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  AppStrings.helloWelcome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.loginToContinue,
                  style: TextStyle(color: Colors.white),
                ),
                const Spacer(),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: AppStrings.username,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  // controller: passwordController,
                  onChanged: (value) => {password = value},
                  decoration: InputDecoration(
                    hintText: AppStrings.password,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print('Forgot is clicked');
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white //font color
                    ),
                    child: Text(AppStrings.forgotPassword),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   return HomePage();
                      // }));
                      // Navigator.of(context)
                      //     .pushReplacementNamed(AppRoutes.main);
                      final token = await doLogin();
                      Navigator.of(context).push(PageRouteBuilder(pageBuilder: (
                          context, animation, secondaryAnimation) {
                        return MainPage(token: token);
                      },));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black),
                    child: Text(AppStrings.login),
                  ),
                ),
                const Spacer(),
                const Text(
                  AppStrings.orSignInWith,
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Google is clicked');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.icGoogle,
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(AppStrings.loginWithGoogle)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Facebook is clicked');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.icFacebook,
                          width: 20,
                          height: 22,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(AppStrings.loginWithGoogle)
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      AppStrings.dontHaveAccount,
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        print('sign up');
                      },
                      style:
                      TextButton.styleFrom(foregroundColor: Colors.amber),
                      child: const Text(
                        AppStrings.signup,
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.amber),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<Token> doLogin() async {
    final username = usernameController.text;
    // final password = passwordController.text;
    final body = {'email': username, 'password': password};
    final response = await http.post(
      Uri.parse(loginRoute),
      body: body,
    );
    if (response.statusCode == 200) {
      print(response.body);
      print('La response es : ${response.body}');
      var json = jsonDecode(response.body);
      var resClass = Token.fromJson(json);
      print('La response  en json es : ${json['token']}');
      print('La response  en json class es : ${resClass.token}');

      return resClass;
    } else {
      print('You have an error');
      throw Exception('ERROR');
    }
  }
}

/**
 * SizedBox(
    width: 250,
    child: ElevatedButton(
    onPressed: () {
    print('Login was clicked');
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.amber,
    foregroundColor: Colors.black,
    shape: const RoundedRectangleBorder(
    borderRadius:
    BorderRadius.all(Radius.circular(5)), // Asignar un radio de borde cero
    ),
    ),
    child: Text('Log in'),
    ),
    ),
 *
 * */
