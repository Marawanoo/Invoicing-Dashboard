import 'package:flutter/material.dart';

class HomeCardAnalysisContainer extends StatelessWidget {
  const HomeCardAnalysisContainer(
      {super.key, required this.height, this.isSelected = false});
  final double height;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        margin: EdgeInsets.only(right: 5),
        width: width * 0.005,
        height: MediaQuery.sizeOf(context).height * height,
        decoration: BoxDecoration(
            color: isSelected
                ? Theme.of(context).textTheme.headlineLarge?.color
                : Color(0xff64a2f8),
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
