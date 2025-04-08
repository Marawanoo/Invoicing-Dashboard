import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      scrollPadding: EdgeInsets.zero,
      decoration: InputDecoration(
          hintStyle: Theme.of(context).textTheme.bodySmall,
          hintText: 'Type to Search',
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Iconsax.search_normal_1,
              color: Theme.of(context).textTheme.bodySmall?.color,
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Theme.of(context).cardColor),
    );
  }
}
