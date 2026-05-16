
import 'package:flutter/material.dart';
import 'package:share_kun/core/util/number_format_widget.dart';

class SummaryCard extends StatelessWidget {
  final String label;
  final double amount;
  final bool isPrimary;

  const SummaryCard({
    super.key,
    required this.label,
    required this.amount,
    required this.isPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: isPrimary
            ? const LinearGradient(
                colors: [Color(0xFF4A90D9), Color(0xFF2176C7)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        color: isPrimary ? null : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: isPrimary
            ? null
            : Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: isPrimary
                ? const Color(0xFF4A90D9).withValues(alpha:  0.35)
                : const Color(0x0A000000),
            blurRadius: isPrimary ? 12 : 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isPrimary
                  ? Colors.white.withValues(alpha:  0.2)
                  : const Color(0xFFF0F4FF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.receipt_outlined,
              size: 18,
              color: isPrimary ? Colors.white : const Color(0xFF4A90D9),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: isPrimary
                  ? Colors.white.withValues(alpha:  0.85)
                  : const Color(0xFF6B7280),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '${NumberFormatWidget.formatAmount(amount)} ₭',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: isPrimary ? Colors.white : const Color(0xFF1A1A2E),
            ),
          ),
        ],
      ),
    );
  }

 
}