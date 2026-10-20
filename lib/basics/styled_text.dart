import 'package:flutter/material.dart';

const double size = 30;
const FontStyle style = FontStyle.italic;

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.color, {super.key});

  final String text;
  final Color color;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontStyle: style),
    );
  }
}
