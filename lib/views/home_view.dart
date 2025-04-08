import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/layouts/home_desktop_layout.dart';
import 'package:invoicing_dashboard/widgets/adaptive_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          desktopLayout: (context) => HomeDesktopLayout()),
    );
  }
}
