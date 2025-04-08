import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoicing_dashboard/themes/app_themes.dart';
import 'package:invoicing_dashboard/views/home_view.dart';

import 'controller/theme_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ThemeController());
  runApp(const InvoicingDashboard());
}

class InvoicingDashboard extends StatelessWidget {
  const InvoicingDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        builder: (themeController) => GetMaterialApp(
              // themeMode: ThemeMode.dark,
              home: HomeView(),
              debugShowCheckedModeBanner: false,
              theme: AppThemes.light,
              darkTheme: AppThemes.dark,
            ));
  }
}
