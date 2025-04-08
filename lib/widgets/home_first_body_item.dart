import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/home_assets_container.dart';
import 'package:invoicing_dashboard/widgets/home_custom_container.dart';
import 'package:invoicing_dashboard/widgets/home_statics_container.dart';

class HomeFirstBodyItem extends StatelessWidget {
  const HomeFirstBodyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: HomeCustomContainer(widget: HomeStaticsContainer()),
        ),
        SizedBox(
          height: 25,
        ),
        Expanded(child: HomeCustomContainer(widget: HomeAssetsContainer()))
      ],
    );
  }
}
