import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/colors.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.isSelected});
  final IconData icon;
  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: isSelected
          ? BoxDecoration(
              boxShadow: [
                  BoxShadow(
                      color: ColorsProject.mainBlueColor.withValues(alpha: 0.3),
                      blurRadius: 7,
                      offset: Offset(2, 5))
                ],
              color: ColorsProject.mainBlueColor,
              borderRadius: BorderRadius.circular(10))
          : null,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
            weight: 5,
            color: isSelected
                ? Colors.white
                : Theme.of(context).textTheme.bodySmall?.color,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: isSelected
                ? Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white)
                : Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
