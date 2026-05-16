import 'package:flutter/material.dart';

class SocialBadgeWidget extends StatelessWidget {
  final Color color;
  final Color? borderColor;
  final String letter;
  final TextStyle letterStyle;

  const SocialBadgeWidget({
    super.key,
    required this.color,
    this.borderColor,
    required this.letter,
    required this.letterStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: borderColor != null
            ? Border.all(color: borderColor!, width: 1)
            : null,
      ),
      alignment: Alignment.center,
      child: Text(letter, style: letterStyle),
    );
  }
}
