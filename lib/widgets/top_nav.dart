import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';

Widget topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  const textColorPrimary = Colors.black;
  const textColorSecondary = Colors.grey;
  final double width = ResponsiveWidget.pageBlockSizeHorizontal(context);
  final double height = ResponsiveWidget.pageBlockSizeVertical(context);
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        height: height * 50,
        width: width * 10,
      ),
      const Text("JT",
          style:
              TextStyle(fontWeight: FontWeight.w500, color: textColorPrimary)),
      const Text(
        " / ",
        style: TextStyle(color: textColorSecondary),
      ),
      const Text(
        "About",
        style: TextStyle(color: textColorSecondary),
      ),
      const Text(
        " / ",
        style: TextStyle(color: textColorSecondary),
      ),
      const Text(
        "Projects",
        style: TextStyle(color: textColorSecondary),
      ),
      const Text(
        " / ",
        style: TextStyle(color: textColorSecondary),
      ),
      const Text(
        "Expertise",
        style: TextStyle(color: textColorSecondary),
      ),
      const Text(
        " / ",
        style: TextStyle(color: textColorSecondary),
      ),
      const Text(
        "Artistic",
        style: TextStyle(color: textColorSecondary),
      )
    ],
  );
}
