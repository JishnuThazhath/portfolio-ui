import 'package:flutter/material.dart';

class LayoutSingleChildScrollViewController extends StatelessWidget {
  LayoutSingleChildScrollViewController({super.key, required this.child});

  final Widget child;

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(controller: _scrollController, child: child);
  }
}
