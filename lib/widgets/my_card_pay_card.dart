import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:invoicing_dashboard/functions/responsive_font.dart';

class MyCardPayCard extends StatelessWidget {
  const MyCardPayCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Swiper(
      physics: NeverScrollableScrollPhysics(),
      viewportFraction: 1,
      itemCount: 3,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(right: width < 1200 ? 30 : 90),
        child: buildCard(index, context),
      ),
      itemWidth: width * 0.27,
      itemHeight: MediaQuery.sizeOf(context).height * 0.24,
      layout: SwiperLayout.STACK,
      axisDirection: AxisDirection.right,
      loop: false,
    );
    // SizedBox(
    //   width: 300,
    //   height: 180,
    //   child: PageView.builder(
    //     scrollBehavior: ScrollBehavior(),
    //     pageSnapping: false,
    //     scrollDirection: Axis.horizontal,
    //     itemCount: 3,
    //     itemBuilder: (context, index) => AnimatedScale(
    //       scale: 0 == index ? 1 : 0.9,
    //       duration: const Duration(milliseconds: 300),
    //       child: _buildCard(index),
    //     ),
    //   ),
    // );
  }

  Widget buildCard(int index, BuildContext context) {
    List<Color> colors = [
      [Colors.blue, Colors.green],
      [Colors.purple, Colors.deepPurpleAccent],
      [Colors.orange, Colors.deepOrangeAccent],
    ][index];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Iconsax.wifi, color: Colors.white),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'Balance',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    Text("\$234,234.2",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                color: Colors.white,
                                fontSize: ResponsiveFont.getResponsiveFontSize(
                                    context,
                                    fontSize: 22))),
                  ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    fit: BoxFit.contain,
                    index == 0 ? 'assets/mastercard.svg' : 'assets/visa.svg',
                    width: ResponsiveFont.getResponsiveFontSize(context,
                        fontSize: 45),
                  ),
                  SizedBox(
                    height: index == 0 ? 5 : 20,
                  ),
                  SvgPicture.asset(
                    fit: BoxFit.contain,
                    'assets/sim.svg',
                    width: ResponsiveFont.getResponsiveFontSize(context,
                        fontSize: 45),
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "NAME",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.white60,
                        fontWeight: FontWeight.w300,
                        fontSize: 10),
                  ),
                  Text(
                    "Mohamed Ahmed",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EXPIRE",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.white60,
                        fontWeight: FontWeight.w300,
                        fontSize: 10),
                  ),
                  Text(
                    "06/25",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
