import 'package:flutter/material.dart';

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(99)),
      child: Icon(
        icon,
        color: Theme.of(context).canvasColor,
      ),
    );
  }
}
