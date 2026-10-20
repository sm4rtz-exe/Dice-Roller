import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice(this.imagePath, {super.key});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(child: Image.asset(imagePath, width: 200));
  }
}
