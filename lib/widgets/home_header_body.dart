import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'home_card.dart';

class HomeHeaderBody extends StatelessWidget {
  const HomeHeaderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: HomeCard(
            isSelected: true,
            icon: Iconsax.wallet_2,
            title: 'Balance',
            amount: r'$2349.18',
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Expanded(
            child: HomeCard(
          icon: Iconsax.arrow_swap_horizontal,
          title: 'Transactions',
          amount: r'$49.18',
        )),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: HomeCard(
            icon: Iconsax.user,
            title: 'Account Activity',
            amount: r'$49.18',
          ),
        ),
      ],
    );
  }
}
