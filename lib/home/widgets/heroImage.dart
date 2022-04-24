import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/hero.jpg"), fit: BoxFit.cover),
      ),
      child: const Text("test"),
    );
  }
}
