import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/material.dart';
import 'package:share_kun/core/constants/enums/debt_typr_enum.dart';
import 'package:share_kun/core/util/number_format_widget.dart';
import 'package:share_kun/features/friend/presentation/widget/badge_widget.dart';
import 'package:share_kun/features/home/domain/entities/debt_activity_entities.dart';
import 'package:share_kun/generated/locale_keys.g.dart';
import 'package:url_launcher/url_launcher.dart';

String _formatDate(String iso) {
  try {
    return DateFormat('dd MMM yyyy').format(DateTime.parse(iso).toLocal());
  } catch (_) {
    return iso;
  }
}

@RoutePage()
class DebtDetailPage extends StatelessWidget {
  final DebtActivityEntities activity;

  const DebtDetailPage({super.key, required this.activity});

  bool get _isOwed => activity.type == DebtType.owed;
  bool get _isPaid => activity.status == DebtStatus.paid;

  @override
  Widget build(BuildContext context) {
    final isOwed = _isOwed;
    final isPaid = _isPaid;
    final directionColor = isOwed ? const Color(0xFF16A34A) : const Color(0xFFEF4444);
    final directionBg    = isOwed ? const Color(0xFFDCFCE7) : const Color(0xFFFFEDD8);
    final directionLabel = isOwed ? LocaleKeys.debt_detail_owes_you.tr() : LocaleKeys.debt_detail_you_owe.tr();

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 18, color: Color(0xFF1A1A2E)),
          onPressed: () => context.router.maybePop(),
        ),
        title: Text(
          LocaleKeys.debt_detail_title.tr(),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1A1A2E),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ── Header card ───────────────────────────────────────────────
            _Card(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: const Color(0xFF4A90D9),
                    child: Text(
                      activity.contactName.isNotEmpty
                          ? activity.contactName[0].toUpperCase()
                          : '?',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          activity.contactName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xFF1A1A2E),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            BadgeWidget(
                              label: directionLabel,
                              color: directionColor,
                              bg: directionBg,
                            ),
                            const SizedBox(width: 8),
                            if (isPaid)
                              BadgeWidget(
                                label: LocaleKeys.debt_detail_paid.tr(),
                                color: const Color(0xFF16A34A),
                                bg: const Color(0xFFDCFCE7),
                              )
                            else
                              BadgeWidget(
                                label: LocaleKeys.debt_detail_pending.tr(),
                                color: const Color(0xFFD97706),
                                bg: const Color(0xFFFEF3C7),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // ── Amounts ───────────────────────────────────────────────────
            _Card(
              child: Column(
                children: [
                  _AmountRow(
                    label: LocaleKeys.debt_detail_total_amount.tr(),
                    value: '${NumberFormatWidget.fmt(activity.totalAmount)} ₭',
                    color: directionColor,
                    isBold: true,
                  ),
                  const Divider(height: 20, color: Color(0xFFF3F4F6)),
                  _AmountRow(
                    label: LocaleKeys.debt_detail_amount_per_person.tr(),
                    value: '${NumberFormatWidget.fmt(activity.amountPerUser)} ₭',
                    color: directionColor,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // ── Info rows ─────────────────────────────────────────────────
            _Card(
              child: Column(
                children: [
                  _InfoRow(
                    icon: Icons.calendar_today_outlined,
                    label: LocaleKeys.debt_detail_date.tr(),
                    value: _formatDate(activity.date),
                  ),
                  const Divider(height: 20, color: Color(0xFFF3F4F6)),
                  _InfoRow(
                    icon: Icons.person_outline_rounded,
                    label: LocaleKeys.debt_detail_lender.tr(),
                    value: activity.ownerName.isNotEmpty
                        ? activity.ownerName
                        : activity.contactName,
                  ),
                  if (activity.note != null && activity.note!.isNotEmpty) ...[
                    const Divider(height: 20, color: Color(0xFFF3F4F6)),
                    _InfoRow(
                      icon: Icons.notes_rounded,
                      label: LocaleKeys.debt_detail_note.tr(),
                      value: activity.note!,
                    ),
                  ],
                ],
              ),
            ),

            // ── QR + Deeplink (iOwe only) ─────────────────────────────────
            if (activity.qrCode != null) ...[
              const SizedBox(height: 12),
              _Card(
                child: Column(
                  children: [
                    Text(
                      LocaleKeys.debt_detail_scan_to_pay.tr(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1A2E),
                      ),
                    ),
                    const SizedBox(height: 12),
                    QrImageView(
                      data: activity.qrCode!,
                      version: QrVersions.auto,
                      size: 220,
                    ),
                    if (activity.deeplink != null) ...[
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () async {
                            final uri = Uri.parse(activity.deeplink!);
                            if (await canLaunchUrl(uri)) {
                              await launchUrl(uri, mode: LaunchMode.externalApplication);
                            }
                          },
                          icon: const Icon(Icons.open_in_new_rounded, size: 18),
                          label: Text(LocaleKeys.debt_detail_open_payment_app.tr()),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4A90D9),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

// ── Shared card wrapper ────────────────────────────────────────────────────────

class _Card extends StatelessWidget {
  final Widget child;
  const _Card({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
      child: child,
    );
  }
}

// ── Info row ──────────────────────────────────────────────────────────────────

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoRow({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: const Color(0xFF9CA3AF)),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 13, color: Color(0xFF9CA3AF)),
        ),
        const Spacer(),
        Text(
          value,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1A1A2E),
          ),
        ),
      ],
    );
  }
}

// ── Amount row ────────────────────────────────────────────────────────────────

class _AmountRow extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  final bool isBold;

  const _AmountRow({
    required this.label,
    required this.value,
    required this.color,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 13,
            color: const Color(0xFF6B7280),
            fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: TextStyle(
            fontSize: isBold ? 16 : 14,
            fontWeight: isBold ? FontWeight.w700 : FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }
}
