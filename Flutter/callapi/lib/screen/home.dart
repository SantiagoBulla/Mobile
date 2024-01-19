import 'package:callapi/model/user.dart';
import 'package:callapi/services/user_api.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  //useEffect
  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rest API call'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final email = user.email;
          final phone = user.phone;
          final color =
              user.gender == 'male' ? Colors.lightBlue : Colors.pinkAccent;
          // final name = user['name'];
          // final image = user['picture']['thumbnail'];
          return ListTile(
            // leading: ClipRRect(
            //   borderRadius: BorderRadius.circular(100),r
            //   child: Image.network(image),
            // ),
            // title: Text('${name['first']} ${name['last']}'),
            title: Text(user.fullName),
            subtitle: Text(user.location.country),
            tileColor: color,
          );
        },
      ),
    );
  }

  Future<void> fetchUsers() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
