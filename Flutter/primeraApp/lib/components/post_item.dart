import 'package:flutter/material.dart';

import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;

  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/user1.png',
                height: 50,
                width: 50,
              ),
              SizedBox(width: 16),
              Text(user, style: AppText.subtitle3),
            ],
          ),
          SizedBox(height: 12),
          Image.asset('assets/temp/post1.jpg'),
          SizedBox(height: 12),
          const Text(
            'Lorem dfdfg fdh df 3trt ydfggfh fh fdv bjf hj sdf he h h et yjetyjegh e ',
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
