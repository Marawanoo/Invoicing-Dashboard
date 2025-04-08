import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/custom_drawer.dart';
import 'package:invoicing_dashboard/widgets/home_body.dart';

class HomeDesktopLayout extends StatelessWidget {
  const HomeDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: width < 1400 ? 4 : 5,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
              child: HomeBody()),
        )
      ],
    );
  }
}
