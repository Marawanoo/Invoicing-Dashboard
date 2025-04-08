import 'package:flutter/cupertino.dart';

abstract class ResponsiveFont {
  static double getResponsiveFontSize(BuildContext context,
      {required fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;

    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 600) {
      return width / 400;
    } else if (width < 1024) {
      return width / 800;
    } else {
      return width / 1350;
    }
  }
}
