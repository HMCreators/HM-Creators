import 'package:flutter/material.dart';
import 'package:hmcreators/constants/textfont.dart';
import '../Utils/Image_Slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ImageSlider(),
          Center(
            child: ExtraLargeTitle(
              'Revolutionize your Designs with\nHM Creators',
            ),
          )
        ],
      ),
    );
  }
}
