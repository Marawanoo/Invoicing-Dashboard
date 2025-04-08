import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:invoicing_dashboard/utils/colors.dart';
import 'package:invoicing_dashboard/widgets/your_wallet_pay.dart';

import '../functions/responsive_font.dart';
import 'home_custom_container.dart';

class HomeYourWalletContainer extends StatelessWidget {
  const HomeYourWalletContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeCustomContainer(
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Wallet',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context).textTheme.headlineSmall?.color,
                        fontSize: ResponsiveFont.getResponsiveFontSize(context,
                            fontSize: 15),
                      ),
                ),
                Text(
                  'Buy',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text('Sell', style: Theme.of(context).textTheme.bodySmall),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor,
                      borderRadius: BorderRadius.circular(14)),
                  child: Text(
                    'Exchange',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  width: 75,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Stack(clipBehavior: Clip.none, children: [
              Column(
                children: [
                  YourWalletPay(
                    size: 15,
                    amount: '3',
                    type: 'ETH',
                    image: 'assets/ethereum-eth-logo.svg',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  YourWalletPay(
                    amount: '234.53',
                    type: 'USDT',
                    image: 'assets/usdt.svg',
                  )
                ],
              ),
              Positioned(
                bottom: 100,
                left: 180,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).focusColor,
                      borderRadius: BorderRadius.circular(99)),
                  child: Icon(Iconsax.arrow_swap_horizontal,
                      size: 30,
                      color: Theme.of(context).textTheme.headlineSmall?.color),
                ),
              )
            ]),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1USDT =0.00023 ETH',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.color,
                              fontSize: ResponsiveFont.getResponsiveFontSize(
                                  context,
                                  fontSize: 14))),
                  Icon(
                    Iconsax.arrow_down_1,
                    size: 18,
                    color: Theme.of(context).textTheme.headlineSmall?.color,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    backgroundColor: ColorsProject.mainBlueColor),
                child: Text(
                  'Connect Wallet',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
