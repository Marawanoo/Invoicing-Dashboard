import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:invoicing_dashboard/models/drawer_item_model.dart';
import 'package:invoicing_dashboard/widgets/drawer_item.dart';

class DrawerItemList extends StatelessWidget {
  const DrawerItemList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DrawerItemModel> items = [
      DrawerItemModel(icon: Iconsax.home_15, title: 'Dashboard'),
      DrawerItemModel(icon: Iconsax.activity, title: 'Referral Program'),
      DrawerItemModel(icon: Iconsax.wallet_2, title: 'Wallet'),
      DrawerItemModel(icon: Iconsax.dollar_square, title: 'Staking'),
      DrawerItemModel(icon: Iconsax.category, title: 'Online Transact'),
      DrawerItemModel(icon: Iconsax.setting, title: 'Setting')
    ];
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => DrawerItem(
        icon: items[index].icon,
        title: items[index].title,
        isSelected: index == 0 ? true : false,
      ),
    );
  }
}
