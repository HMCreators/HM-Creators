import 'package:carousel_slider/carousel_slider.dart';
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
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Other widgets
          CarouselSlider(
            items: images,
            options: CarouselOptions(
              height: size.height*0.9, // Customize the height of the carousel
              autoPlay: true, // Enable auto-play
              enlargeCenterPage: true, // Increase the size of the center item
              enableInfiniteScroll: true, // Enable infinite scroll
              viewportFraction: 0.6,
              autoPlayInterval: Duration(seconds: 1, milliseconds: 500),
              onPageChanged: (index, reason) {
                // Optional callback when the page changes
                // You can use it to update any additional UI components
              },
            ),
          ),
          // Other widgets
        ],
    );
  }}