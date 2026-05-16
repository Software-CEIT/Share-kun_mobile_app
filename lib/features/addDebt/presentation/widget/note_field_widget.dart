import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/features/addDebt/presentation/cubit/add_debt_cubit.dart';
import 'package:share_kun/generated/locale_keys.g.dart';

class NoteField extends StatelessWidget {
  final String note;
  const NoteField({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.adddebt_add_note.tr(),
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1A1A2E),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged:  context.read<AddDebtCubit>().updateNote,
          maxLength:  100,
          maxLines:   3,
          style: const TextStyle(fontSize: 14),
          decoration: InputDecoration(
            hintText: LocaleKeys.adddebt_note_hint.tr(),
            hintStyle: const TextStyle(
              color: Color(0xFF9CA3AF),
              fontSize: 13,
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(left: 12, top: 14, right: 8),
              child: Icon(
                Icons.notes_rounded,
                color: Color(0xFF9CA3AF),
                size: 18,
              ),
            ),
            prefixIconConstraints: const BoxConstraints(),
            filled: true,
            fillColor: Colors.white,
            counterStyle: const TextStyle(
              fontSize: 11,
              color: Color(0xFF9CA3AF),
            ),
            contentPadding: const EdgeInsets.fromLTRB(12, 14, 12, 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Color(0xFF4A90D9), width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}
