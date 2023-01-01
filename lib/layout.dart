import 'package:flutter/material.dart';
import 'package:portfolio_ui/controller/layout_page_view_controller.dart';
import 'package:portfolio_ui/helper/app_bottom_sheet.dart';
import 'package:portfolio_ui/widgets/app_drawer.dart';
import 'package:portfolio_ui/widgets/top_nav.dart';

class Layout extends StatelessWidget {
  Layout({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFffffff),
        appBar: topNavigationBar(context, scaffoldKey),
        body: const Padding(
          padding: EdgeInsets.all(50),
          child: Center(child: LayoutPageViewController()),
        ),
        endDrawer: const AppDrawer(),
        bottomSheet: appBottomSheet(context));
  }
}
