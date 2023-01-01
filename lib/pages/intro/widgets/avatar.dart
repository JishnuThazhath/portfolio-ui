import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';

Widget avatar(BuildContext context) {
  return Flexible(
    child: Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 5, blurRadius: 6),
          ]),
      child: CircleAvatar(
        radius: ResponsiveWidget.pageBlockSizeHorizontal(context) * 130,
        // backgroundImage:
        //     ExactAssetImage("assets/images/my_image_1.png", scale: 1.5),
        // child: Image.asset(
        //   "assets/images/my_image_1.png",
        //   height: 300,
        // ),
        backgroundImage: const AssetImage("assets/images/dont_care.JPG"),
        backgroundColor: const Color(0xFFf7f7f7),
      ),
    ),
  );
}
