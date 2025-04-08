import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:invoicing_dashboard/widgets/custom_title_body_containers.dart';
import 'package:invoicing_dashboard/widgets/home_custom_container.dart';
import 'package:invoicing_dashboard/widgets/home_my_card_container.dart';
import 'package:invoicing_dashboard/widgets/home_your_wallet_Container.dart';

import '../functions/responsive_font.dart';

class HomeSecondBodyItem extends StatelessWidget {
  const HomeSecondBodyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeCustomContainer(
          widget: HomeMyCardContainer(),
        ),
        SizedBox(
          height: 25,
        ),
        Expanded(flex: 3, child: HomeYourWalletContainer()),
      ],
    );
  }
}
