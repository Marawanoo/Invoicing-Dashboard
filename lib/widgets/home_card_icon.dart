import 'package:flutter/material.dart';

class HomeCardIcon extends StatelessWidget {
  const HomeCardIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.symmetric(horizontal: 7.5, vertical: 7.5),
      decoration: BoxDecoration(
          color: Color(0xff252534), borderRadius: BorderRadius.circular(10)),
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
