import 'package:flutter/material.dart';
import 'package:hmcreators/constants/font.dart';

import '../Utils/Image_Slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//     Widget HomePageWidget() {
      return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ExtraLargeTitle(
                          'Revolutionize your\nDesigns with\nHM Creators.',
                        ),
                        SizedBox(height: 20),

                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 7,
                    child: ImageSlider(),
                  ),
                ],
              ),
            ),


          ],
        ),
      );
    }
  // }
}