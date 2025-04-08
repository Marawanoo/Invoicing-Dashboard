import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:invoicing_dashboard/functions/responsive_font.dart';
import 'package:invoicing_dashboard/widgets/custom_title_body_containers.dart';
import 'package:invoicing_dashboard/widgets/my_card_pay_card.dart';

class HomeMyCardContainer extends StatelessWidget {
  const HomeMyCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: CustomTitleBodyContainers(title: 'My Cards'),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99),
                  color: Theme.of(context).hintColor),
              child: Icon(
                Icons.more_horiz,
                color: Theme.of(context).textTheme.headlineSmall?.color,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Stack(children: [
          Expanded(flex: 3, child: MyCardPayCard()),
          Expanded(
            child: Positioned(
              right: MediaQuery.sizeOf(context).width * 0.01,
              top: (MediaQuery.sizeOf(context).height * 0.23) * 0.4,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xfff6f5f8),
                    borderRadius: BorderRadius.circular(99)),
                child: Icon(
                  Iconsax.arrow_right_3,
                  size: ResponsiveFont.getResponsiveFontSize(context,
                      fontSize: 20),
                ),
              ),
            ),
          )
        ])
      ],
    );
  }
}
