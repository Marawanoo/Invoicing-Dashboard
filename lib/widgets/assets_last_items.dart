import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/custom_text_assets.dart';

import 'assets_colume_items.dart';

class AssetsLastItems extends StatelessWidget {
  const AssetsLastItems({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> lastPrice = [
      r'$1,234',
      r'$1,234',
      r'$1,234',
      r'$1,234',
    ];
    return AssetsColumnItems(
        title: 'Last Price',
        children: lastPrice
            .asMap()
            .entries
            .map(
              (e) => Expanded(child: CustomTextAssets(title: e.value)),
            )
            .toList());
  }
}
