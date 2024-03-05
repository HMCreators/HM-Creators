import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hmcreators/constants/color.dart';

Widget HomePageWidget() {
  return Container(
    child: BackgroundImageWithText(),
  );
}

class BackgroundImageWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'background.png',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.white],
                  stops: [0, .9])),
        ),
        Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const SizedBox(
                  height: 32,
                ),
              ],
            )),
        Center(
          child: Text('',
              style: GoogleFonts.openSans(fontSize: 500, color: themepeach)),
        ),
      ]),
    );
  }
}
