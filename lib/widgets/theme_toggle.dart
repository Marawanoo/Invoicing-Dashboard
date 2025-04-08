import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/theme_controller.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find<ThemeController>();
    int selectedIndex = themeController.isDarkMode.value ? 1 : 0;
    return CupertinoSlidingSegmentedControl<int>(
      groupValue: selectedIndex,
      thumbColor: Theme.of(context).drawerTheme.backgroundColor!,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      onValueChanged: (value) {
        themeController.toggleTheme(value == 1);
      },
      children: {
        0: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Light",
            style: selectedIndex == 0
                ? Theme.of(context).textTheme.bodyLarge
                : Theme.of(context).textTheme.bodySmall,
          ),
        ),
        1: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Dark",
            style: selectedIndex == 1
                ? Theme.of(context).textTheme.bodyLarge
                : Theme.of(context).textTheme.bodySmall,
          ),
        ),
      },
    );
  }
}
