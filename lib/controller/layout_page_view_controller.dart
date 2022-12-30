import 'package:flutter/widgets.dart';
import 'package:portfolio_ui/helper/app_scroll_behaviour.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';
import 'package:portfolio_ui/pages/intro/intro_page_large.dart';
import 'package:portfolio_ui/pages/intro/intro_page_small.dart';

class LayoutPageViewController extends StatefulWidget {
  const LayoutPageViewController({super.key});

  @override
  State<LayoutPageViewController> createState() =>
      _LayoutPageViewControllerState();
}

class _LayoutPageViewControllerState extends State<LayoutPageViewController> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: _pageController,
      scrollBehavior: AppScrollBehaviour(),
      children: const [
        ResponsiveWidget(
          largeScreen: IntroPageLarge(),
          smallScreen: IntroPageSmall(),
        ),
      ],
    );
  }
}
