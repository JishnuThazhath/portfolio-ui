import 'package:flutter/material.dart';
import 'package:portfolio_ui/controller/layout_single_child_scrollview_controller.dart';
import 'package:portfolio_ui/helper/app_bottom_sheet.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';
import 'package:portfolio_ui/pages/about/about_page_large.dart';
import 'package:portfolio_ui/pages/intro/intro_page_large.dart';
import 'package:portfolio_ui/widgets/top_nav.dart';

class Layout extends StatelessWidget {
  Layout({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFffffff),
        body: Padding(
          padding: EdgeInsets.only(
              left: ResponsiveWidget.pageBlockSizeHorizontal(context) * 100,
              right: ResponsiveWidget.pageBlockSizeHorizontal(context) * 100,
              bottom: ResponsiveWidget.pageBlockSizeHorizontal(context) * 30),

          // child: const LayoutPageViewController(),
          child: LayoutSingleChildScrollViewController(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topNavigationBar(context, scaffoldKey),
              const IntroPageLarge(),
              const AboutPageLarge(),
              appBottomSheet(context)
            ],
          )),
        ));
  }
}
