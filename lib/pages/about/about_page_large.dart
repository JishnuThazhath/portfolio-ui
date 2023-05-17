import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';

class AboutPageLarge extends StatelessWidget {
  const AboutPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("About", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(
            width: ResponsiveWidget.pageBlockSizeHorizontal(context) * 400),
        const Flexible(
          child: Text(
              "Who am I ? I am a Coder and a wanna be artist. I am currenly working as a Senior Consultant at ThoughtWorks. Most of my career I have been a Java developer, but thats not it, I had picked up lots of skills along the way,"),
        ),
        SizedBox(height: ResponsiveWidget.pageBlockSizeVertical(context) * 300)
      ],
    );
  }
}
