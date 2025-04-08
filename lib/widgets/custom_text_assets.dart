import 'package:flutter/material.dart';

class CustomTextAssets extends StatelessWidget {
  const CustomTextAssets({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(fontWeight: FontWeight.w700, fontSize: 13),
      ),
    );
  }
}
