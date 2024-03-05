import 'package:flutter/material.dart';
import 'package:hmcreators/Utils/Buttons.dart';
import 'package:hmcreators/constants/color.dart';
import 'package:hmcreators/pages/About_Us_Page.dart';
import 'package:hmcreators/pages/Contact_Us_Page.dart';
import 'package:hmcreators/pages/Home_Page.dart';
import 'package:hmcreators/pages/Services_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePageWidget(),
    AboutPageWidget(),
    ContactPageWidget(),
    ServicesPageWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: themepeach,
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "logo.png",
              width: 100,
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NavButton(
                  text: "Home",
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
                NavButton(
                  text: "About",
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
                NavButton(
                  text: "Service",
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                ),
                NavButton(
                  text: "Contact",
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                ),
              ],
            ),
          ],
        )),
        body:  _pages[_selectedIndex],
        );
  }
}
