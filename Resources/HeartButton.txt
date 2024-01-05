import 'package:flutter/material.dart'; //libreria para usar los widgets

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold App',
      home: MyHomePage(title: 'Scaffold App Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  //no se ejecuta la app con el build en esta clase sino que se hace a través del estado
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _corazon = const Icon(Icons.favorite_border, color: Colors.redAccent);
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(widget.title!)), //tomar el titulo del widget
        actions: [
          //una serie de acciones que son los botones que va a tener
          IconButton(
              onPressed: (){_setLikeAction();},
              icon: _corazon)
        ],
      ),
    );
  }

  void _setLikeAction() {
    setState(() {
      if (_liked) {
        _corazon = Icon(Icons.favorite_border, color: Colors.redAccent);
        _liked = false;
      } else {
        _corazon = Icon(Icons.favorite, color: Colors.redAccent);
        _liked = true;
      }
    });
  }
}
