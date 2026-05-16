import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/features/addDebt/domain/entities/contact_item_entities.dart';
import 'package:share_kun/features/addDebt/presentation/cubit/add_debt_cubit.dart';
import 'package:share_kun/generated/locale_keys.g.dart';

class SelectContactSheet extends StatefulWidget {
  const SelectContactSheet({super.key});

  @override
  State<SelectContactSheet> createState() => _SelectContactSheetState();
}

class _SelectContactSheetState extends State<SelectContactSheet> {
  final _searchCtrl = TextEditingController();

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddDebtCubit, AddDebtState>(
      builder: (context, state) {
        final cubit = context.read<AddDebtCubit>();
        final contacts = state.contacts;
        final selectedCount = state.selectedContacts.length;

        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Drag handle
              const SizedBox(height: 12),
              Container(
                width: 36,
                height: 4,
                decoration: BoxDecoration(
                  color: const Color(0xFFCBD5E1),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 16),

              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LocaleKeys.adddebt_select_friends.tr(),
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1A1A2E),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        LocaleKeys.adddebt_done.tr(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF4A90D9),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Search field
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: TextField(
                  controller: _searchCtrl,
                  onChanged: (v) => context.read<AddDebtCubit>().searchContacts(v),
                  style: const TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    hintText: LocaleKeys.adddebt_search_contacts.tr(),
                    hintStyle: const TextStyle(color: Color(0xFF9CA3AF), fontSize: 13),
                    prefixIcon: const Icon(Icons.search, color: Color(0xFF9CA3AF), size: 20),
                    filled: true,
                    fillColor: const Color(0xFFF3F4F6),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Selected count
              if (selectedCount > 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 4, 20, 0),
                  child: Row(
                    children: [
                      Text(
                        LocaleKeys.adddebt_selected_count.tr(namedArgs: {'count': '$selectedCount'}),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4A90D9),
                        ),
                      ),
                    ],
                  ),
                ),

              const SizedBox(height: 4),
              const Divider(height: 1, color: Color(0xFFE5E7EB)),

              // Contact list
              Flexible(
                child: contacts.isEmpty
                    ? Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(
                          LocaleKeys.adddebt_no_contacts_found.tr(),
                          style: const TextStyle(color: Color(0xFF9CA3AF), fontSize: 14),
                        ),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: contacts.length,
                        itemBuilder: (context, i) {
                          final contact = contacts[i];
                          final selIdx = state.selectedContacts
                              .indexWhere((s) => s.id == contact.id);
                          final isSelected = selIdx >= 0;

                          return _ContactRow(
                            contact:    contact,
                            isSelected: isSelected,
                            selectionIndex: selIdx,
                            avatarColor: cubit.avatarColorFor(contact.name),
                            onTap: () => cubit.selectContact(contact),
                          );
                        },
                      ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}

class _ContactRow extends StatelessWidget {
  final ContactItemEntities contact;
  final bool  isSelected;
  final int   selectionIndex;
  final Color avatarColor;
  final VoidCallback onTap;

  const _ContactRow({
    required this.contact,
    required this.isSelected,
    required this.selectionIndex,
    required this.avatarColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSelected
            ? const Color(0xFF4A90D9).withValues(alpha: 0.07)
            : Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          children: [
            // Avatar
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: isSelected ? avatarColor : const Color(0xFFE5E7EB),
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    contact.name[0].toUpperCase(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: isSelected ? Colors.white : const Color(0xFF6B7280),
                    ),
                  ),
                ),
                if (isSelected)
                  Positioned(
                    top: -3,
                    right: -3,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                        color: Color(0xFF4A90D9),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '${selectionIndex + 1}',
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: 14),

            // Name
            Expanded(
              child: Text(
                contact.name,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                  color: isSelected
                      ? const Color(0xFF1A1A2E)
                      : const Color(0xFF374151),
                ),
              ),
            ),

            // Check icon
            if (isSelected)
              const Icon(Icons.check_circle_rounded,
                  color: Color(0xFF4A90D9), size: 22)
            else
              const Icon(Icons.radio_button_unchecked,
                  color: Color(0xFFCBD5E1), size: 22),
          ],
        ),
      ),
    );
  }
}
