import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFFffffff),
      leadingWidth: ResponsiveWidget.pageBlockSizeHorizontal(context) * 200,
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Color(0xFF54ca95),
            radius: 25,
            child: Text(
              "J",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 30),
            ),
          ),
          SizedBox(
              width: ResponsiveWidget.pageBlockSizeHorizontal(context) * 5),
          const Text("Jishnu",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24)),
          const Text(" S", style: TextStyle(color: Colors.black, fontSize: 24))
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => {},
          child: const Text("About Me",
              style: TextStyle(color: Color(0xFF8f8f8f), fontSize: 16)),
        ),
        SizedBox(width: ResponsiveWidget.pageBlockSizeHorizontal(context) * 30),
        TextButton(
          onPressed: () => {},
          child: const Text("Skills",
              style: TextStyle(color: Color(0xFF8f8f8f), fontSize: 16)),
        ),
        SizedBox(width: ResponsiveWidget.pageBlockSizeHorizontal(context) * 30),
        TextButton(
          onPressed: () => {},
          child: const Text("Work History",
              style: TextStyle(color: Color(0xFF8f8f8f), fontSize: 16)),
        ),
        SizedBox(width: ResponsiveWidget.pageBlockSizeHorizontal(context) * 30),
        TextButton(
          onPressed: () => {},
          child: const Text("Resume",
              style: TextStyle(color: Color(0xFF8f8f8f), fontSize: 16)),
        ),
        SizedBox(width: ResponsiveWidget.pageBlockSizeHorizontal(context) * 30),
        TextButton(
          onPressed: () => {},
          child: const Text("Contact",
              style: TextStyle(color: Color(0xFF8f8f8f), fontSize: 16)),
        ),
      ],
    );
