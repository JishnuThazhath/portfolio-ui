import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';

Widget intro(BuildContext context) {
  double height = ResponsiveWidget.pageBlockSizeVertical(context);
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: ResponsiveWidget.isLargeScreen(context) ||
              ResponsiveWidget.isMediumScreen(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Software Engineer | AWS Infra Engineer",
            style: TextStyle(color: Color(0xFF8f8f8f), fontSize: 18)),
        SizedBox(height: height * 10),
        const Text("Jishnu S",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 50)),
        SizedBox(height: height * 40),
        const Text(
            "I am a Software Engineer at ThoughtWorks with more than six years",
            style: TextStyle(color: Colors.black, fontSize: 17)),
        SizedBox(height: height * 10),
        const Text(
            "of experience in performing analysis, design and application development.",
            style: TextStyle(color: Colors.black, fontSize: 17)),
        SizedBox(height: height * 10),
        const Text(
            "I have developed and implemented client-server applications, web applications",
            style: TextStyle(color: Colors.black, fontSize: 17)),
        SizedBox(height: height * 5),
        const Text("and cloud infrastructure management.",
            style: TextStyle(color: Colors.black, fontSize: 17)),
      ],
    ),
  );
}
