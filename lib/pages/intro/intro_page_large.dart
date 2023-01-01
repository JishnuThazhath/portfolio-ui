import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';
import 'package:portfolio_ui/pages/intro/widgets/avatar.dart';
import 'package:portfolio_ui/pages/intro/widgets/intro.dart';

class IntroPageLarge extends StatelessWidget {
  const IntroPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        avatar(context),
        SizedBox(width: ResponsiveWidget.pageBlockSizeVertical(context) * 50),
        intro(context),
      ],
    );
  }
}
