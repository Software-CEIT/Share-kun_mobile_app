import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:share_kun/generated/locale_keys.g.dart';

class SplitSummary extends StatelessWidget {
  final double amount;
  final int peopleCount;

  const SplitSummary({
    super.key,
    required this.amount,
    required this.peopleCount,
  });

  String _fmt(double v) {
    if (v == v.truncateToDouble()) {
      return v.toInt().toString().replaceAllMapped(
            RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
            (m) => '${m[1]},',
          );
    }
    return v.toStringAsFixed(0).replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (m) => '${m[1]},',
        );
  }

  @override
  Widget build(BuildContext context) {
    if (amount <= 0 || peopleCount == 0) return const SizedBox.shrink();

    final perPerson = amount / peopleCount;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFEBF4FF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF4A90D9).withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.splitscreen_rounded, size: 16, color: Color(0xFF4A90D9)),
          const SizedBox(width: 8),
          if (peopleCount == 1)
            Text(
              LocaleKeys.adddebt_total_amount.tr(namedArgs: {'amount': _fmt(amount)}),
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF4A90D9),
              ),
            )
          else
            Text(
              LocaleKeys.adddebt_split_formula.tr(namedArgs: {
                'amount': _fmt(amount),
                'count': '$peopleCount',
                'per': _fmt(perPerson),
              }),
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF4A90D9),
              ),
            ),
        ],
      ),
    );
  }
}
