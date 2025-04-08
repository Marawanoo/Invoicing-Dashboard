import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AssetsColumnItems extends StatelessWidget {
  const AssetsColumnItems(
      {super.key, required this.title, required this.children});
  final String title;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontSize: 13),
            ),
            Icon(
              Iconsax.arrow_down,
              size: Theme.of(context).textTheme.bodyMedium?.fontSize,
              color: Theme.of(context).textTheme.titleMedium?.color,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [...children.take(4)],
            ))
      ],
    );
  }
}
