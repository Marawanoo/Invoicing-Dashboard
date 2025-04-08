import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/drawer_header.dart';
import 'package:invoicing_dashboard/widgets/drawer_item_list.dart';
import 'package:invoicing_dashboard/widgets/drawer_user_info.dart';
import 'package:invoicing_dashboard/widgets/theme_toggle.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17.5, vertical: 15),
      color: Theme.of(context).drawerTheme.backgroundColor,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomDrawerHeader()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'MENU',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          DrawerItemList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DrawerUserInfo(),
                  SizedBox(
                    height: 20,
                  ),
                  ThemeToggle()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
