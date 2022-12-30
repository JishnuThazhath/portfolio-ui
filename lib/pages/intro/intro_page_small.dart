import 'package:flutter/material.dart';
import 'package:portfolio_ui/pages/intro/widgets/avatar.dart';
import 'package:portfolio_ui/pages/intro/widgets/intro.dart';

class IntroPageSmall extends StatelessWidget {
  const IntroPageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        avatar(context),
        intro(context),
      ],
    );
  }
}
