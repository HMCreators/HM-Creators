import 'package:flutter/material.dart';
import 'package:hmcreators/constants/color.dart';
import 'package:hmcreators/constants/font.dart';
import 'package:hmcreators/pages/Home_Page.dart';

import 'pages/About_Us_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Scrollable Website',
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
  ScrollController _scrollController = ScrollController();

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themepeach,
      appBar: AppBar(
          backgroundColor: themegrey,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "logo.png",
                width: 100,
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavItem(
                    title: 'Home',
                    onTap: () => _scrollToTop(),
                  ),
                  NavItem(
                    title: 'About Us',
                    onTap: () {
                      _scrollController.animateTo(
                        MediaQuery.of(context).size.height,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  NavItem(
                    title: 'Services',
                    onTap: () {
                      _scrollController.animateTo(
                        MediaQuery.of(context).size.height * 2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  NavItem(
                    title: 'Contact Us',
                    onTap: () {
                      _scrollController.animateTo(
                        MediaQuery.of(context).size.height * 3,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),
            ],
          )),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomePage(),
            AboutUsPage(),
            Section(title: 'Services'),
            Section(title: 'Contact Us'),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  NavItem({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: NormalText(title),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;

  Section({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey[200],
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
