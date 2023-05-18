import 'package:flutter/material.dart';
import 'package:portfolio_ui/helper/general_styles.dart';
import 'package:portfolio_ui/helper/responsiveness.dart';

class AboutPageLarge extends StatelessWidget {
  const AboutPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        //SizedBox(height: ResponsiveWidget.pageBlockSizeVertical(context) * 200),
        Flexible(
          child: Text(
            "Who am I? I am a Coder and a wanna be artist. I am currenly working as a Senior Consultant at ThoughtWorks. Most of my career I have been a Java developer, but thats not it, I had picked up lots of skills along the way.",
            style: GeneralStyles.bodyTextStyle,
          ),
        ),
        Flexible(
          child: Text(
            "I can build and automate AWS cloud infrastructure. After a certain point I stopped worrying about the tech stack, instead start thinking about the problem, and how to solve it.",
            style: GeneralStyles.bodyTextStyle,
          ),
        ),
        SizedBox(height: ResponsiveWidget.pageBlockSizeVertical(context) * 100)
      ],
    );
  }
}
