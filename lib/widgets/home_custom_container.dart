import 'package:flutter/material.dart';

class HomeCustomContainer extends StatelessWidget {
  const HomeCustomContainer({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withValues(alpha: 0.1),
            //     blurRadius: 2,
            //     spreadRadius: 0,
            //     offset: const Offset(0, 2),
            //   ),
            // ],
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).drawerTheme.backgroundColor),
        child: widget);
  }
}
