import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

import '../functions/responsive_font.dart';

class YourWalletPay extends StatelessWidget {
  const YourWalletPay(
      {super.key,
      required this.amount,
      required this.type,
      required this.image,
      this.size = 22});
  final String amount, type, image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You Pay',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: ResponsiveFont.getResponsiveFontSize(context,
                            fontSize: 14),
                      ),
                ),
                Text(
                  amount,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: ResponsiveFont.getResponsiveFontSize(context,
                            fontSize: 22),
                      ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).focusColor),
            child: Row(
              children: [
                SvgPicture.asset(
                  fit: BoxFit.contain,
                  image,
                  width: size,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  type,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: ResponsiveFont.getResponsiveFontSize(context,
                            fontSize: 15),
                      ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Iconsax.arrow_down_1,
                  size: 15,
                  color: Theme.of(context).textTheme.headlineSmall?.color,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
