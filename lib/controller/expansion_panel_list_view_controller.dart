import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/general_styles.dart';

class ExpansionPanelListViewController extends StatefulWidget {
  const ExpansionPanelListViewController({super.key, required this.children});

  final List<ExpansionListItem> children;

  @override
  State<ExpansionPanelListViewController> createState() =>
      _ExpansionPanelListViewControllerState();
}

class _ExpansionPanelListViewControllerState
    extends State<ExpansionPanelListViewController> {
  @override
  Widget build(BuildContext context) {
    final List<ExpansionListItem> data = _getExpandedListItems();

    return ExpansionPanelList(
      expandedHeaderPadding: const EdgeInsets.all(0.0),
      elevation: 0.0,
      dividerColor: Colors.black,
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          data[panelIndex].isExpanded = !isExpanded;
        });
      },
      children: data
          .map<ExpansionPanel>((item) => ExpansionPanel(
              canTapOnHeader: true,
              backgroundColor: GeneralStyles.primaryBackgroundColor,
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: item.header,
                );
              },
              body: ListTile(
                title: item.body,
              ),
              isExpanded: item.isExpanded))
          .toList(),
    );
  }

  List<ExpansionListItem> _getExpandedListItems() {
    return widget.children;
  }
}

// This clas stores the state of the expansion list.
class ExpansionListItem {
  ExpansionListItem(
      {required this.header,
      required this.body,
      required this.isExpanded,
      this.color});

  Widget header;
  Widget body;
  bool isExpanded;
  Color? color = Colors.white;
}
