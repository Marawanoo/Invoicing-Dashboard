import 'package:flutter/material.dart';

class StaticsItemDot extends StatelessWidget {
  const StaticsItemDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      width: 7.5,
      height: 7.5,
      decoration: BoxDecoration(
          color: Color(0xffa4bce4), borderRadius: BorderRadius.circular(99)),
    );
  }
}
