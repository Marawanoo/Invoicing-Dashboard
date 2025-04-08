import 'package:flutter/material.dart';

import '../utils/assets.dart';

class UserImageContainer extends StatelessWidget {
  const UserImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage(Assets.avatar),
      child: Stack(clipBehavior: Clip.none, children: [
        Positioned(
          top: 0,
          right: -7,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
                color: Color(0xff78f080),
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
      ]),
    );
  }
}
