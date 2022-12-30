import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';

Widget avatar(BuildContext context) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 5, blurRadius: 6),
          ]),
      child: CircleAvatar(
        radius: ResponsiveWidget.pageBlockSizeHorizontal(context) * 120,
        // backgroundImage:
        //     ExactAssetImage("assets/images/my_image_1.jpg", scale: 0.5),
        backgroundColor: Colors.red, //const Color(0xFFf7f7f7),
      ),
    ),
  );
}
