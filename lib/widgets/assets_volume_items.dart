import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/functions/responsive_font.dart';

import '../utils/colors.dart';
import 'assets_colume_items.dart';

class AssetsVolumeItems extends StatelessWidget {
  const AssetsVolumeItems({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> volume = [r'50.3%', r'50.3%', r'50.3%', r'50.3%'];

    return AssetsColumnItems(
      title: 'Volume',
      children: volume
          .asMap()
          .entries
          .map(
            (e) => Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width * 0.009,
                    vertical: 0),
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: ColorsProject.mainGrayColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    e.value,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontSize: ResponsiveFont.getResponsiveFontSize(context,
                            fontSize: 13),
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
