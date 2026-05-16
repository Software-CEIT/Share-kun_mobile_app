import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:share_kun/core/constants/enums/debt_typr_enum.dart';
import 'package:share_kun/core/util/number_format_widget.dart';
import 'package:share_kun/features/home/domain/entities/debt_activity_entities.dart';
import 'package:share_kun/features/friend/presentation/widget/badge_widget.dart';

String _formatDate(String iso) {
  try {
    return DateFormat('dd MMM yyyy').format(DateTime.parse(iso).toLocal());
  } catch (_) {
    return iso;
  }
}

class ActivityCard extends StatelessWidget {
  final DebtActivityEntities activity;
  final Color avatarColor;
  final VoidCallback? onTap;
  final VoidCallback? onMarkPaid;
  final VoidCallback? onDelete;

  const ActivityCard({
    super.key,
    required this.activity,
    required this.avatarColor,
    this.onTap,
    this.onMarkPaid,
    this.onDelete,
  });

  bool get _isOwed => activity.type == DebtType.owed; // others owe you
  bool get _isPaid => activity.status == DebtStatus.paid;

  @override
  Widget build(BuildContext context) {
    final isOwed = _isOwed;
    final isPaid = _isPaid;

    return GestureDetector(
      onTap: onTap,
      child: Container(
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
          // ── Avatar ─────────────────────────────────────────
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: avatarColor,
              borderRadius: BorderRadius.circular(23),
            ),
            alignment: Alignment.center,
            child: Text(
              activity.contactName.isNotEmpty
                  ? activity.contactName[0].toUpperCase()
                  : '?',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(width: 12),

          // ── Contact name + owner + date + note ─────────────
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Contact name
                Text(
                  activity.contactName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xFF1A1A2E),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),

                // Owner name
                Text(
                  activity.ownerName,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF9CA3AF),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 3),

                // Date + note in one row
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        _formatDate(activity.date),
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF9CA3AF),
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (activity.note != null &&
                        activity.note!.isNotEmpty) ...[
                      const Text(
                        '  ·  ',
                        style: TextStyle(
                            fontSize: 11, color: Color(0xFF9CA3AF)),
                      ),
                      Expanded(
                        child: Text(
                          activity.note!,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color(0xFF9CA3AF),
                            fontStyle: FontStyle.italic,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),

          // ── Amount / status ─────────────────────────────────
          const SizedBox(width: 10),
          if (isPaid)
            Row(
              children: [
                BadgeWidget(
                  label: 'Paid',
                  color: const Color(0xFF16A34A),
                  bg: const Color(0xFFDCFCE7),
                ),
                if (onMarkPaid != null || onDelete != null)
                  _ActionMenu(onMarkPaid: null, onDelete: onDelete),
              ],
            )
          else
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      isOwed ? 'Owes you' : 'You owe',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: isOwed
                            ? const Color(0xFF16A34A)
                            : const Color(0xFFEF4444),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${isOwed ? '+' : '−'} ${NumberFormatWidget.fmt(activity.amount)} ₭',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: isOwed
                            ? const Color(0xFF16A34A)
                            : const Color(0xFFEF4444),
                      ),
                    ),
                  ],
                ),
                if (onMarkPaid != null || onDelete != null)
                  _ActionMenu(
                    onMarkPaid: onMarkPaid,
                    onDelete: onDelete,
                  ),
              ],
            ),
        ],
      ),
      ),
    );
  }
}

// ── Action Menu ───────────────────────────────────────────────────────────────

class _ActionMenu extends StatelessWidget {
  final VoidCallback? onMarkPaid;
  final VoidCallback? onDelete;

  const _ActionMenu({this.onMarkPaid, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert_rounded,
          size: 20, color: Color(0xFF9CA3AF)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 8,
      offset: const Offset(0, 8),
      onSelected: (v) {
        if (v == 'paid') onMarkPaid?.call();
        if (v == 'delete') onDelete?.call();
      },
      itemBuilder: (_) => [
        if (onMarkPaid != null)
          const PopupMenuItem<String>(
            value: 'paid',
            child: Row(children: [
              Icon(Icons.check_circle_outline_rounded,
                  size: 18, color: Color(0xFF16A34A)),
              SizedBox(width: 10),
              Text('Mark as Paid',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.5,
                      color: Color(0xFF111827))),
            ]),
          ),
        if (onDelete != null)
          const PopupMenuItem<String>(
            value: 'delete',
            child: Row(children: [
              Icon(Icons.delete_outline_rounded,
                  size: 18, color: Color(0xFFEF4444)),
              SizedBox(width: 10),
              Text('Delete',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.5,
                      color: Color(0xFFEF4444))),
            ]),
          ),
      ],
    );
  }
}