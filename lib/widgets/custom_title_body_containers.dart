import 'package:flutter/material.dart';

import '../functions/responsive_font.dart';

class CustomTitleBodyContainers extends StatelessWidget {
  const CustomTitleBodyContainers({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Theme.of(context).textTheme.headlineSmall?.color,
            fontSize: ResponsiveFont.getResponsiveFontSize(context,
                fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize),
          ),
    );
  }
}
