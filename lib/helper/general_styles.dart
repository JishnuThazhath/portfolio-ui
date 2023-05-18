import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneralStyles {
  static TextStyle titleTextStyle = GoogleFonts.notoSans(
      textStyle: const TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.w500,
  ));

  static TextStyle bodyTextStyle = GoogleFonts.notoSans(
      textStyle: const TextStyle(
    fontSize: 40,
    color: Color(0xFF8f8f8f),
    fontWeight: FontWeight.w500,
  ));

  static Color primaryBackgroundColor =
      const Color.fromARGB(255, 237, 236, 231);

  static Color secondaryBackgroundColor = const Color.fromARGB(255, 19, 52, 53);
}
