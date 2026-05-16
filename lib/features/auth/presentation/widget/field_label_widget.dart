import 'package:flutter/material.dart';

class FieldLabelWidget extends StatelessWidget {
  final String text;
  const FieldLabelWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: Color(0xFF1A1A2E),
      ),
    );
  }
}
