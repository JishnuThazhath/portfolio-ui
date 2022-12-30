import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';
import 'package:portfolio_ui/pages/intro/intro_page_small.dart';

import '../pages/intro/intro_page_large.dart';

class LayoutSingleChildScrollViewController extends StatefulWidget {
  const LayoutSingleChildScrollViewController({super.key});

  @override
  State<LayoutSingleChildScrollViewController> createState() =>
      _LayoutSingleChildScrollViewControllerState();
}

class _LayoutSingleChildScrollViewControllerState
    extends State<LayoutSingleChildScrollViewController> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: const ResponsiveWidget(
        largeScreen: IntroPageLarge(),
        smallScreen: IntroPageSmall(),
      ),
    );
  }
}
