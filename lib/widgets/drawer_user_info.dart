import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/user_image_container.dart';

import '../functions/responsive_font.dart';
import '../utils/colors.dart';

class DrawerUserInfo extends StatelessWidget {
  const DrawerUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserImageContainer(),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Marawanos',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Row(
              children: [
                Text(
                  'Programmer',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: ColorsProject.mainBlueColor),
                  child: Text(
                    'Pro',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.white,
                        fontSize: ResponsiveFont.getResponsiveFontSize(context,
                            fontSize: 12)),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
