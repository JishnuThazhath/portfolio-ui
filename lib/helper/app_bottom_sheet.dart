import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget appBottomSheet(BuildContext context) {
  return Column(
    children: [
      const Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: Row(
              children: [
                TextButton(
                    onPressed: () => _launchUrl(
                        "https://www.linkedin.com/in/jishnu-s-84108a158/"),
                    child: const Text("Linkedin")),
                TextButton(onPressed: () {}, child: const Text("Github")),
                TextButton(onPressed: () {}, child: const Text("Twitter")),
                TextButton(onPressed: () {}, child: const Text("Instagram"))
              ],
            ),
          ),
          const Expanded(child: Text("© 2022 All rights reserved."))
        ],
      ),
    ],
  );
}

Future<void> _launchUrl(url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
