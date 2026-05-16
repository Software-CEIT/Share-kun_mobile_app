import 'package:flutter/material.dart';

class SocialButtonWidget extends StatelessWidget {
  final Widget badge;
  final String label;
  final VoidCallback onTap;
  final double? gap;

  const SocialButtonWidget({
    super.key,
    required this.badge,
    required this.label,
    required this.onTap,
    this.gap
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 13),
        side: const BorderSide(color: Color(0xFFE5E7EB)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          badge,
          SizedBox(width: gap ?? 12),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1A1A2E),
            ),
          ),
        ],
      ),
    );
  }
}
