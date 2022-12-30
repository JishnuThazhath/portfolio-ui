import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({
    super.key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  });

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= largeScreenSize;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= mediumScreenSize &&
        MediaQuery.of(context).size.width < largeScreenSize;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < mediumScreenSize;
  }

  static double pageMaxWidth(BuildContext context) {
    MediaQueryData deviceData = MediaQuery.of(context);
    return deviceData.size.width;
  }

  static double pageMaxHeight(BuildContext context) {
    MediaQueryData deviceData = MediaQuery.of(context);
    return deviceData.size.height;
  }

  static double pageBlockSizeHorizontal(BuildContext context) {
    MediaQueryData deviceData = MediaQuery.of(context);
    return deviceData.size.width / 1000;
  }

  static double pageBlockSizeVertical(BuildContext context) {
    MediaQueryData deviceData = MediaQuery.of(context);
    return deviceData.size.height / 1000;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        if (maxWidth > largeScreenSize) {
          return largeScreen;
        } else if (maxWidth >= mediumScreenSize && maxWidth < largeScreenSize) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
