import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hmcreators/constants/textfont.dart';
import 'package:hmcreators/constants/themecolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HM Creators',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScrollableWebsite(),
    );
  }
}

class ScrollableWebsite extends StatefulWidget {
  @override
  _ScrollableWebsiteState createState() => _ScrollableWebsiteState();
}

class _ScrollableWebsiteState extends State<ScrollableWebsite> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(int sectionIndex) {
    _scrollController.animateTo(
      MediaQuery.of(context).size.height * sectionIndex,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "logo.png", // Assuming your logo file path
              width: 100,
              height: 70,
            ),
            Row(
              children: [
                _buildNavItem('Home', 0),
                _buildNavItem('About Us', 1),
                _buildNavItem('Services', 3),
                _buildNavItem('Contact Us', 4),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHomePage(),
            _buildAboutUsPage(),
            _buildSection('Services', themegrey),
            _buildSection('Contact Us', themegrey),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String title, int sectionIndex) {
    return InkWell(
      onTap: () => _scrollToSection(sectionIndex),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: NormalText(title)),
    );
  }

  Widget _buildHomePage() {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            autoPlay: true,
            enableInfiniteScroll: true,
          ),
          items: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                child: Image.asset(
                  colorBlendMode: BlendMode.darken,
                  "background.png",
                  fit: BoxFit.fill,
                ),
              ),
            )
            // Assuming your background image file path
          ],
        ),
        const Text(
          'Revolutionize your Designs with\nHM Creators',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildSection(String title, Color color) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: color,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildAboutUsPage() {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.grey[200], // Background color for the About Us section
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About Us',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  'Photos.jpg', // Replace with your image file path
                  fit: BoxFit.cover,
                  height: 150.0,
                ),
              ),
              SizedBox(width: 20.0),
              const Expanded(
                child: Text(
                  'Description 1',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'Description 2',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                child: Image.asset(
                  'Photos.jpg', // Replace with your image file path
                  fit: BoxFit.cover,
                  height: 150.0,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  'Photos.jpg', // Replace with your image file path
                  fit: BoxFit.cover,
                  height: 150.0,
                ),
              ),
              SizedBox(width: 20.0),
              const Expanded(
                child: Text(
                  'Description 1',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'Description 2',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                child: Image.asset(
                  'Photos.jpg', // Replace with your image file path
                  fit: BoxFit.cover,
                  height: 150.0,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  'Photos.jpg', // Replace with your image file path
                  fit: BoxFit.cover,
                  height: 150.0,
                ),
              ),
              SizedBox(width: 20.0),
              const Expanded(
                child: Text(
                  'Description 1',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'Description 2',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                child: Image.asset(
                  'Photos.jpg', // Replace with your image file path
                  fit: BoxFit.cover,
                  height: 150.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildImage(
                'Photos.jpg',
              ),
              // Replace with your image file path
              _buildImage(
                'Photos.jpg',
              ),
              // Replace with your image file path
              _buildImage(
                'Photos.jpg',
              ),
              // Replace with your image file path

            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Expanded(
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        height: 150.0,
      ),
    );
  }
}
