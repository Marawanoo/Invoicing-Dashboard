import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:invoicing_dashboard/widgets/user_image_container.dart';

import 'custom_text_field.dart';
import 'header_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            'Overview',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        SizedBox(width: width * 0.18, child: CustomTextField()),
        SizedBox(
          width: 30,
        ),
        HeaderIcon(
          icon: Iconsax.sms,
        ),
        HeaderIcon(icon: Iconsax.notification),
        UserImageContainer()
      ],
    );
  }
}
