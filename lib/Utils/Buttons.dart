import 'package:flutter/material.dart';
import 'package:hmcreators/constants/font.dart';

class NavButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const NavButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: BoldText(
        text,
      ),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
    );
  }
}
