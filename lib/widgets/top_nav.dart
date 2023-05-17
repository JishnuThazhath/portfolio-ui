import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';

Widget topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  const textColorPrimary = Colors.black;
  const textColorSecondary = Colors.grey;
  return Row(
    children: [
      SizedBox(height: ResponsiveWidget.pageBlockSizeVertical(context) * 50),
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
      )
    ],
  );
}
