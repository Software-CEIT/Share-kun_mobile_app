
import 'package:flutter/material.dart';
import 'package:share_kun/core/constants/enums/debt_typr_enum.dart';
import 'package:share_kun/core/util/number_format_widget.dart';
import 'package:share_kun/features/friend/domain/entities/friend_entity.dart';
import 'package:share_kun/features/friend/presentation/util/initials_util.dart';
import 'package:share_kun/features/friend/presentation/widget/badge_widget.dart';

class FriendCard extends StatelessWidget {
  final FriendEntity item;
  final Color      avatarColor;

  const FriendCard({super.key ,required this.item, required this.avatarColor});

  @override
  Widget build(BuildContext context) {
    final isOwesYou = item.debtType == FriendDebtType.owesYou;
    final isPaid    = item.debtType == FriendDebtType.paid;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE5E7EB)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Avatar
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: avatarColor,
              borderRadius: BorderRadius.circular(23),
            ),
            alignment: Alignment.center,
            child: Text(
              InitialsUtil.initials(item.name),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(width: 12),
          // Name & note
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: isOwesYou
                        ? const Color(0xFF2176C7)
                        : const Color(0xFF1A1A2E),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  item.note,
                  style: TextStyle(
                    fontSize: 12,
                    color: isOwesYou
                        ? const Color(0xFF4A90D9)
                        : const Color(0xFF9CA3AF),
                  ),
                ),
              ],
            ),
          ),
          // Amount / status
          if (isPaid)
            BadgeWidget(label: 'Paid', color: const Color(0xFF16A34A), bg: const Color(0xFFDCFCE7))
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  isOwesYou ? 'Owes you' : 'You owe',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: isOwesYou
                        ? const Color(0xFF4A90D9)
                        : const Color(0xFF6B7280),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '${NumberFormatWidget.fmt(item.amount)} ₭',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: isOwesYou
                        ? const Color(0xFF2176C7)
                        : const Color(0xFF1A1A2E),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }



}
