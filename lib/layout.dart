import 'package:flutter/material.dart';
import 'package:portfolio_ui/controller/expansion_panel_list_view_controller.dart';
import 'package:portfolio_ui/helper/app_bottom_sheet.dart';
import 'package:portfolio_ui/helper/general_styles.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';
import 'package:portfolio_ui/pages/about/about_page_large.dart';
import 'package:portfolio_ui/pages/intro/intro_page_large.dart';
import 'package:portfolio_ui/widgets/top_nav.dart';

class Layout extends StatelessWidget {
  Layout({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final double width = ResponsiveWidget.pageBlockSizeHorizontal(context);
    final double height = ResponsiveWidget.pageBlockSizeVertical(context);
    return Scaffold(
      extendBody: true,
      key: scaffoldKey,
      backgroundColor: GeneralStyles.primaryBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
            top: 10, bottom: 0, left: width * 100, right: width * 100),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              topNavigationBar(context, scaffoldKey),
              SizedBox(
                height: height * 200,
              ),
              ExpansionPanelListViewController(children: [
                ExpansionListItem(
                    header: Text(
                      "JISHNU THAZHATH",
                      style: GeneralStyles.titleTextStyle,
                    ),
                    body: const IntroPageLarge(),
                    isExpanded: false,
                    color: Colors.yellow),
                ExpansionListItem(
                    header: Text("ABOUT", style: GeneralStyles.titleTextStyle),
                    body: const AboutPageLarge(),
                    isExpanded: false,
                    color: Colors.red),
                ExpansionListItem(
                    header:
                        Text("PROJECTS", style: GeneralStyles.titleTextStyle),
                    body: const Placeholder(),
                    isExpanded: false,
                    color: Colors.blue),
                ExpansionListItem(
                    header:
                        Text("EXPERTISE", style: GeneralStyles.titleTextStyle),
                    body: const Placeholder(),
                    isExpanded: false,
                    color: Colors.amber),
                ExpansionListItem(
                    header:
                        Text("ARTISTIC", style: GeneralStyles.titleTextStyle),
                    body: const Placeholder(),
                    isExpanded: false,
                    color: Colors.green),
              ]),
              SizedBox(height: height * 100),
              appBottomSheet(context),
            ],
          ),
        ),
      ),
    );
  }
}
