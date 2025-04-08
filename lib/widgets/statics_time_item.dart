import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/functions/responsive_font.dart';

import '../utils/colors.dart';

class StaticsTimeItem extends StatelessWidget {
  const StaticsTimeItem(
      {super.key, required this.title, this.isSelected = false});
  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final widht = MediaQuery.sizeOf(context).width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: widht * 0.01),
      padding:
          isSelected ? EdgeInsets.symmetric(horizontal: 15, vertical: 5) : null,
      decoration: isSelected
          ? BoxDecoration(
              color: ColorsProject.mainBlueColor,
              borderRadius: BorderRadius.circular(4))
          : null,
      child: Text(
        title,
        style: isSelected
            ? Theme.of(context).textTheme.labelLarge?.copyWith(
                fontSize:
                    ResponsiveFont.getResponsiveFontSize(context, fontSize: 12),
                color: Colors.white)
            : Theme.of(context).textTheme.labelLarge?.copyWith(
                fontSize: ResponsiveFont.getResponsiveFontSize(context,
                    fontSize: 12)),
      ),
    );
  }
}
