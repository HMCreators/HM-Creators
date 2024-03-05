import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late PageController _pageController;
  List<Widget> images = [
    Image.asset("background.png"),
    Image.asset("background.png"),
    Image.asset("background.png"),
    Image.asset("background.png"),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: images.length,
        pageSnapping: true,
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            // activePage = page;
          });
        },
        itemBuilder: (context, pagePosition) {
          return Container(
            // margin: EdgeInsets.all(10),
            child: images[pagePosition],
          );
        });
  }
}
