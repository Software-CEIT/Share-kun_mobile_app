import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_kun/core/constants/enums/debt_typr_enum.dart';
import 'package:share_kun/features/home/data/model/debt_activity_model.dart';

part 'debt_activity_entities.freezed.dart';

@freezed
abstract class DebtActivityEntities with _$DebtActivityEntities {
  const factory DebtActivityEntities({
    required String     id,
    required String     contactName,
    required String     ownerName,
    required String     date,
    required double     amount,
    required double     totalAmount,
    required double     amountPerUser,
    required DebtStatus status,
    required DebtType   type,
    String?             note,
    String?             deeplink,
    String?             qrCode,
  }) = _DebtActivityEntities;

  factory DebtActivityEntities.fromModel(DebtActivityModel m, String currentUserId) {
    final isLender = m.direction == 'owesMe'
        ? m.lenderId == currentUserId
        : m.lenderId != currentUserId;
    final type = isLender ? DebtType.owed : DebtType.borrowed;
    final contactName = isLender
        ? m.borrowers.map((b) => b.user.name).join(', ')
        : m.lender.name;
    final ownerName = isLender
        ? m.lender.name
        : (m.borrowers.firstOrNull?.user.name ?? '');

    final DebtStatus status;
    if (isLender) {
      status = m.borrowers.isNotEmpty && m.borrowers.every((b) => b.status == 'paid')
          ? DebtStatus.paid
          : DebtStatus.pending;
    } else if (m.direction == 'owesMe') {
      final mine = m.borrowers.firstWhere(
        (b) => b.user.id == currentUserId,
        orElse: () => m.borrowers.first,
      );
      status = mine.status == 'paid' ? DebtStatus.paid : DebtStatus.pending;
    } else {
      status = m.borrowers.isNotEmpty && m.borrowers.every((b) => b.status == 'paid')
          ? DebtStatus.paid
          : DebtStatus.pending;
    }

    String? deeplink;
    String? qrCode;
    if (!isLender && m.borrowers.isNotEmpty) {
      final mine = m.borrowers.firstWhere(
        (b) => b.user.id == currentUserId,
        orElse: () => m.borrowers.first,
      );
      deeplink = mine.deeplink;
      qrCode   = mine.qrCode;
    }

    return DebtActivityEntities(
      id:            m.id,
      contactName:   contactName,
      ownerName:     ownerName,
      date:          m.date,
      amount:        isLender ? m.totalAmount : m.amountPerUser,
      totalAmount:   m.totalAmount,
      amountPerUser: m.amountPerUser,
      status:        status,
      type:          type,
      note:          m.note,
      deeplink:      deeplink,
      qrCode:        qrCode,
    );
  }
}
