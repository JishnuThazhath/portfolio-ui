import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/general_styles.dart';
import 'package:portfolio_ui/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'jishnuthazhath',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: GeneralStyles.primaryBackgroundColor),
      home: Layout(),
    );
  }
}
