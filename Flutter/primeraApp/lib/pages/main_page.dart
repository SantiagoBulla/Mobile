import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botton Navigation Container'),
      ),
      body: Center(
        child: Text('Center text'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add '),
        ],
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.blueAccent,
        //min 2:53:47
      ),
    );
  }
}
