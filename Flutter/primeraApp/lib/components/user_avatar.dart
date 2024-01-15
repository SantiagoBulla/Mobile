import 'package:flutter/cupertino.dart';

class UserAvatar extends StatelessWidget {
  final double size;

  const UserAvatar({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //anañade un border radius a sus hijos a través de la propiedad borderRadius
      borderRadius: BorderRadius.all(Radius.circular(15)),
      child: Image.asset(
        'assets/temp/user1.png',
        height: size,
        width: size,
      ),
    );
  }
}
