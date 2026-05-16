import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_kun/features/addDebt/data/model/bank_account_model.dart';

part 'bank_account_entity.freezed.dart';

@freezed
abstract class BankAccountEntity with _$BankAccountEntity {
  const factory BankAccountEntity({
    required String id,
    required String bank,
    required String accountNumber,
    required String holderName,
    required String maskedNumber,
  }) = _BankAccountEntity;

  factory BankAccountEntity.fromModel(BankAccountModel m) => BankAccountEntity(
        id: m.id,
        bank: m.bank,
        accountNumber: m.accountNumber,
        holderName: m.holderName,
        maskedNumber: m.maskedNumber,
      );
}
