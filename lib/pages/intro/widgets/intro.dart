import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/general_styles.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';

Widget intro(BuildContext context) {
  double height = ResponsiveWidget.pageBlockSizeVertical(context);
  return Flexible(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: height * 200),
        Flexible(
          child: Text(
              "is a Software Engineer, Movie enthusiast and a wannabe Artist.",
              style: GeneralStyles.bodyTextStyle),
        ),
        SizedBox(
          height: height * 200,
        )
      ],
    ),
  );
}
