import 'package:flutter/material.dart';
import 'package:portfolio_ui/controller/layout_single_child_scrollview_controller.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';
import 'package:portfolio_ui/pages/intro/widgets/avatar.dart';
import 'package:portfolio_ui/pages/intro/widgets/intro.dart';

class IntroPageSmall extends StatelessWidget {
  const IntroPageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutSingleChildScrollViewController(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              height: ResponsiveWidget.pageBlockSizeVertical(context) * 20),
          avatar(context),
          SizedBox(
              height: ResponsiveWidget.pageBlockSizeVertical(context) * 50),
          intro(context),
        ],
      ),
    );
  }
}
