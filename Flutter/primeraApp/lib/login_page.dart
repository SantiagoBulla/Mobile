import 'package:flutter/material.dart';

// minute 1:30:37
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        children: [
          const Text(
            'Hello, welcome back!',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Login to continue',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Username',
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
            decoration: InputDecoration(
              hintText: 'Password',
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
              child: Text('Forgot password?'),
            ),
          ),
          SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                print('Login was clicked');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.black),
              child: Text('Log in'),
            ),
          ),
          const SizedBox(
            height: 62,
          ),
          const Text(
            'Or sign in with',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
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
                    'assets/images/google.png',
                    width: 22,
                    height: 22,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text('Login with Google')
                ],
              )),
          ElevatedButton(
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
                  'assets/images/facebook.png',
                  width: 20,
                  height: 22,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text('Login with Facebook')
              ],
            ),
          ),
          Row(
            children: [
              const Text(
                "Don't have account? *",
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                onPressed: () {
                  print('sign up');
                },
                style: TextButton.styleFrom(foregroundColor: Colors.amber),
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.amber),
                ),
              )
            ],
          )
        ],
      ),
    );
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
