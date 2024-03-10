import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  List<Widget> images = [
    Image.asset(
      "background.png",
      fit: BoxFit.fill,
      opacity: const AlwaysStoppedAnimation(.7),
    ),
    Image.asset(
      "Photos.jpg",
      fit: BoxFit.fill,
      opacity: const AlwaysStoppedAnimation(.7),
    ),
    Image.asset(
      "Photos.jpg",
      fit: BoxFit.fill,
      opacity: const AlwaysStoppedAnimation(.7),
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images,
      options: CarouselOptions(
        disableCenter: true,
        height:  MediaQuery.of(context).size.height*0.95,
        // Customize the height of the carousel
        autoPlay: true,
        // Enable auto-play
        // Increase the size of the center item
        enableInfiniteScroll: true,
        // Enable infinite scroll
        autoPlayInterval: Duration(seconds: 1, milliseconds: 500),
        onPageChanged: (index, reason) {
          // Optional callback when the page changes
          // You can use it to update any additional UI components
        },
      ),
    );
  }
}
