import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/colors.dart';
import 'package:invoicing_dashboard/widgets/home_card_icon.dart';

import '../functions/responsive_font.dart';
import 'home_card_analysis_container.dart';

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      this.isSelected = false,
      required this.icon,
      required this.title,
      required this.amount});
  final bool isSelected;
  final IconData icon;
  final String title, amount;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      padding: EdgeInsets.all(20),
      height: height * 0.22,
      decoration: BoxDecoration(
          color: isSelected
              ? ColorsProject.mainBlueColor
              : Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeCardIcon(icon: icon),
              Text(
                '11:08 AM, 12 Aug',
                style: isSelected
                    ? Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontSize: ResponsiveFont.getResponsiveFontSize(context,
                            fontSize: 14))
                    : Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: ResponsiveFont.getResponsiveFontSize(context,
                            fontSize: 14)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: isSelected
                            ? Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Colors.white,
                                fontSize: ResponsiveFont.getResponsiveFontSize(
                                    context,
                                    fontSize: 14))
                            : Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: ResponsiveFont.getResponsiveFontSize(
                                    context,
                                    fontSize: 14))),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      amount,
                      style: isSelected
                          ? Theme.of(context).textTheme.headlineSmall?.copyWith(
                              color: Colors.white,
                              fontSize: ResponsiveFont.getResponsiveFontSize(
                                  context,
                                  fontSize: 22))
                          : Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontSize: ResponsiveFont.getResponsiveFontSize(
                                  context,
                                  fontSize: 22)),
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  HomeCardAnalysisContainer(
                    height: 0.05,
                  ),
                  HomeCardAnalysisContainer(
                    height: 0.04,
                  ),
                  HomeCardAnalysisContainer(height: 0.07),
                  HomeCardAnalysisContainer(height: 0.08),
                  HomeCardAnalysisContainer(height: 0.05),
                  HomeCardAnalysisContainer(height: 0.06),
                  HomeCardAnalysisContainer(height: 0.03, isSelected: true)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
