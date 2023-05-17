import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';

Widget intro(BuildContext context) {
  double height = ResponsiveWidget.pageBlockSizeVertical(context);
  return Flexible(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: height * 500),
        const Text("Jishnu S",
            style: TextStyle(
                color: Colors.black,
                //fontWeight: FontWeight.bold,
                fontSize: 20)),
        const Text(" - Software Engineer | AWS Infra Engineer",
            style: TextStyle(color: Color(0xFF8f8f8f), fontSize: 20)),
        SizedBox(
          height: ResponsiveWidget.pageBlockSizeVertical(context) * 700,
        )
      ],
    ),
  );
}
