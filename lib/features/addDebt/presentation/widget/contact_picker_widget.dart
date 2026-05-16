import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/core/constants/enums/debt_typr_enum.dart';
import 'package:share_kun/features/addDebt/domain/entities/contact_item_entities.dart';
import 'package:share_kun/features/addDebt/presentation/cubit/add_debt_cubit.dart';
import 'package:share_kun/features/addDebt/presentation/widget/select_contact_sheet.dart';
import 'package:share_kun/generated/locale_keys.g.dart';

class ContactPicker extends StatelessWidget {
  final List<ContactItemEntities> contacts;
  final List<ContactItemEntities> selectedContacts;

  const ContactPicker({
    super.key,
    required this.contacts,
    required this.selectedContacts,
  });

  void _showViewAll(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => BlocProvider.value(
        value: context.read<AddDebtCubit>(),
        child: const SelectContactSheet(),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddDebtCubit>();
    final state = cubit.state;
    final direction = state.direction;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              direction == DebtDirection.owesMe
                  ? LocaleKeys.adddebt_who_owes_you.tr()
                  : LocaleKeys.adddebt_who_do_you_owe.tr(),
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1A1A2E),
              ),
            ),
            GestureDetector(
              onTap: () => _showViewAll(context),
              child: Text(
                LocaleKeys.adddebt_view_all.tr(),
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4A90D9),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 88,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...contacts.map((c) {
                final selectionIndex = selectedContacts.indexWhere((s) => s.id == c.id);
                final isSelected = selectionIndex >= 0;
                return Padding(
                  padding: const EdgeInsets.only(right: 16, top: 5),
                  child: GestureDetector(
                    onTap: () => cubit.selectContact(c),
                    child: _ContactAvatar(
                      contact:        c,
                      isSelected:     isSelected,
                      selectionIndex: selectionIndex,
                      color:          cubit.avatarColorFor(c.name),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}

class _ContactAvatar extends StatelessWidget {
  final ContactItemEntities contact;
  final bool  isSelected;
  final int   selectionIndex;
  final Color color;

  const _ContactAvatar({
    required this.contact,
    required this.isSelected,
    required this.selectionIndex,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                color: isSelected ? color : const Color(0xFFE5E7EB),
                shape: BoxShape.circle,
                border: isSelected
                    ? Border.all(color: const Color(0xFF4A90D9), width: 2.5)
                    : null,
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: color.withValues(alpha: 0.4),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        )
                      ]
                    : [],
              ),
              alignment: Alignment.center,
              child: Text(
                contact.name[0].toUpperCase(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: isSelected ? Colors.white : const Color(0xFF6B7280),
                ),
              ),
            ),
            if (isSelected)
              Positioned(
                top: -4,
                right: -4,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Color(0xFF4A90D9),
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${selectionIndex + 1}',
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          contact.name,
          style: TextStyle(
            fontSize: 12,
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
            color: isSelected
                ? const Color(0xFF4A90D9)
                : const Color(0xFF6B7280),
          ),
        ),
      ],
    );
  }
}
