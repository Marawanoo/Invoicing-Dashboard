import 'package:flutter/material.dart';

import '../utils/assets.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 10,
      leading: FittedBox(
        child: Image.asset(
          Assets.logo,
          width: 64,
        ),
      ),
      title: Text(
        'InDash',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
