import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:invoicing_dashboard/widgets/assets_coin_items.dart';
import 'package:invoicing_dashboard/widgets/assets_colume_items.dart';
import 'package:invoicing_dashboard/widgets/assets_custom_chart.dart';
import 'package:invoicing_dashboard/widgets/assets_last_items.dart';
import 'package:invoicing_dashboard/widgets/assets_volume_items.dart';
import 'package:invoicing_dashboard/widgets/custom_text_assets.dart';
import 'package:invoicing_dashboard/widgets/custom_title_body_containers.dart';

import '../functions/responsive_font.dart';

class HomeAssetsContainer extends StatelessWidget {
  const HomeAssetsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> dynamic = ['23.4M', '23.4M', '23.4M', '23.4M'];
    final List<bool> status = [false, true, false, true];
    final List<List<FlSpot>> chart = [
      [
        const FlSpot(0, 0),
        const FlSpot(1, 1),
        const FlSpot(2, 0.5),
        const FlSpot(3, 0.9),
        const FlSpot(4, 0),
      ],
      [
        const FlSpot(0, 1),
        const FlSpot(1, 0.3),
        const FlSpot(2, 0.8),
        const FlSpot(3, 0.3),
      ],
      [
        const FlSpot(0, 0),
        const FlSpot(1, 1),
        const FlSpot(2, 0.5),
        const FlSpot(3, 0.9),
        const FlSpot(4, 0),
      ],
      [
        const FlSpot(0, 0),
        const FlSpot(1, 1),
        const FlSpot(2, 0.8),
        const FlSpot(3, 1),
        const FlSpot(4, 0.6),
        const FlSpot(5, 0.8),
        const FlSpot(6, 0)
      ]
    ];

    return Column(
      children: [
        Row(children: [
          Expanded(
            child: CustomTitleBodyContainers(title: 'Assets'),
          ),
          Text(
            'Show More',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w300,
                fontSize: ResponsiveFont.getResponsiveFontSize(context,
                    fontSize: 16)),
          ),
          Icon(
            Iconsax.arrow_right_3,
            size: ResponsiveFont.getResponsiveFontSize(context, fontSize: 18),
            color: Theme.of(context).textTheme.bodySmall?.color,
          )
        ]),
        SizedBox(
          height: 15,
        ),
        Divider(),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            AssetsCoinItems(),
            AssetsLastItems(),
            AssetsVolumeItems(),
            AssetsColumnItems(
              title: 'Dynamic',
              children: dynamic
                  .asMap()
                  .entries
                  .map(
                    (e) => Expanded(
                      child: CustomTextAssets(title: e.value),
                    ),
                  )
                  .toList(),
            ),
            AssetsColumnItems(
                title: 'Chart',
                children: chart
                    .asMap()
                    .entries
                    .map(
                      (e) => Flexible(
                        child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.06,
                            height: 35,
                            child: AssetsCustomChart(
                              spots: e.value,
                            )),
                      ),
                    )
                    .toList()),
            AssetsColumnItems(
                title: 'Status',
                children: status
                    .asMap()
                    .entries
                    .map(
                      (e) => Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.5, vertical: 0),
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: e.value
                                ? Theme.of(context).highlightColor
                                : Theme.of(context).disabledColor,
                          ),
                          child: Center(
                            child: Text(
                              e.value ? 'Received' : 'Send',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      fontSize:
                                          ResponsiveFont.getResponsiveFontSize(
                                              context,
                                              fontSize: 13),
                                      color: e.value
                                          ? Color(0xff3ede3b)
                                          : Color(0xffad3040)),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList())
          ]),
        ),
      ],
    );
  }
}
