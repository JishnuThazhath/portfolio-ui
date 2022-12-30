import 'package:flutter/material.dart';

Widget appBottomSheet(BuildContext context) {
  return Container(
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 6,
          child: Row(
            children: [
              TextButton(onPressed: () {}, child: const Text("Linkedin")),
              TextButton(onPressed: () {}, child: const Text("Github")),
              TextButton(onPressed: () {}, child: const Text("Twitter")),
              TextButton(onPressed: () {}, child: const Text("Instagram"))
            ],
          ),
        ),
        const Expanded(child: Text("© 2022 All rights reserved."))
      ],
    ),
  );
}
