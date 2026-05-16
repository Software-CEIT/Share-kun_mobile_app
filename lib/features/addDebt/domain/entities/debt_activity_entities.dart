import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_kun/core/constants/enums/debt_typr_enum.dart';
import 'package:share_kun/features/home/data/model/debt_activity_model.dart';

part 'debt_activity_entities.freezed.dart';

@freezed
abstract class DebtActivityEntities with _$DebtActivityEntities {
  const factory DebtActivityEntities({
    required String     id,
    required String     contactName,
    required String     date,
    required double     amount,
    required DebtStatus status,
    required DebtType   type,
    String?             note,
  }) = _DebtActivityEntities;

  factory DebtActivityEntities.fromModel(DebtActivityModel m, String currentUserId) {
    final isLender = m.direction == 'owesMe';
    final type = isLender ? DebtType.owed : DebtType.borrowed;
    final contactName = isLender
        ? m.borrowers.map((b) => b.user.name).join(', ')
        : m.lender.name;

    final DebtStatus status;
    if (isLender) {
      status = m.borrowers.isNotEmpty && m.borrowers.every((b) => b.status == 'paid')
          ? DebtStatus.paid
          : DebtStatus.pending;
    } else {
      final mine = m.borrowers.firstWhere(
        (b) => b.user.id == currentUserId,
        orElse: () => m.borrowers.first,
      );
      status = mine.status == 'paid' ? DebtStatus.paid : DebtStatus.pending;
    }

    return DebtActivityEntities(
      id:          m.id,
      contactName: contactName,
      date:        m.date,
      amount:      isLender ? m.totalAmount : m.amountPerUser,
      status:      status,
      type:        type,
      note:        m.note,
    );
  }
}