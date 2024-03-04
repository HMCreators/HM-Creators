import 'package:flutter/material.dart';

Widget HomePageWidget() {
  return Container(
    child: BackgroundImageWithText(),
  );
}


class BackgroundImageWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'background.png', // Replace 'assets/background_image.jpg' with your image path
              fit: BoxFit.fitHeight,
            ),
          ),
          // Colored Container
          // Positioned.fill(
          //   child: Container(
          //     color: Color(0xFFE0CCBE),
          //   ),
          // ),
          // Text Overlay
          Center(
            child: Text(
              'HM',
              style: TextStyle(
                fontSize: 200, // Adjust font size as needed
                fontFamily: 'TransparentFont', // Use custom font with transparent letters
                color: Colors.transparent, // Make text transparent
              ),
            ),
          ),
        ],
      ),
    );
  }
}