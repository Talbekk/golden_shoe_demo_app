import 'package:flutter/material.dart';

const secondaryColor = Color(0xFF333333);

class SecondaryNavigationBar extends StatefulWidget {
  const SecondaryNavigationBar({Key? key}) : super(key: key);

  @override
  _SecondaryNavigationBarState createState() => _SecondaryNavigationBarState();
}

class _SecondaryNavigationBarState extends State<SecondaryNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        color: secondaryColor,
      ),
    );
  }
}
