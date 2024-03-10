import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hmcreators/constants/color.dart';

Widget NormalText(String text) {
  return Text(
    text,
    style: GoogleFonts.roboto(
        fontWeight: FontWeight.w400, fontSize: 18, color: themebrown),
  );
}

Widget BoldText(String text) {
  return Text(
    text,
    style: GoogleFonts.openSans(
        fontWeight: FontWeight.w600, fontSize: 22, color: themebrown),
  );
}

Widget ExtraBoldText(String text) {
  return Text(
    text,
    style: GoogleFonts.openSans(
        fontWeight: FontWeight.w800, fontSize: 26, color: themebrown),
  );
}

Widget ExtraLightText(String text) {
  return Text(
    text,
    style: GoogleFonts.openSans(
        fontWeight: FontWeight.w200, fontSize: 14, color: themebrown),
  );
}

Widget LightText(String text) {
  return Text(
    text,
    style: GoogleFonts.openSans(
        fontWeight: FontWeight.w400, fontSize: 16, color: themebrown),
  );
}

Widget ExtraLargeTitle(String text) {
  return Text(
    text,textAlign: TextAlign.center,
    style: GoogleFonts.openSans(
        fontWeight: FontWeight.w800, fontSize: 45, color: themewhite),
  );
}
Widget ServicesTextButton(String text) {
  return Text(
    text,
    style: GoogleFonts.openSans(decoration:   TextDecoration.underline,
        fontWeight: FontWeight.w800, fontSize: 20, color: themebrown),
  );
}