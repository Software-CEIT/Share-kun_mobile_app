import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/core/di/injectable.dart';
import 'package:share_kun/features/addDebt/presentation/cubit/add_debt_cubit.dart';
import 'package:share_kun/features/addDebt/presentation/widget/amount_display_widget.dart';
import 'package:share_kun/features/addDebt/presentation/widget/bottom_actions_widget.dart';
import 'package:share_kun/features/addDebt/presentation/widget/contact_picker_widget.dart';
import 'package:share_kun/features/addDebt/presentation/widget/note_field_widget.dart';
import 'package:share_kun/features/addDebt/presentation/widget/split_summary_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

@RoutePage()
class AddDebtPage extends StatelessWidget implements AutoRouteWrapper {
  const AddDebtPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AddDebtCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddDebtCubit>();
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0),
      body: SafeArea(
        child: BlocListener<AddDebtCubit, AddDebtState>(
          listenWhen: (prev, curr) =>
              prev.status != curr.status && curr.status == DataStatus.failure,
          listener: (context, state) {
            Fluttertoast.showToast(
              msg: state.errorMessage ?? 'Something went wrong',
              backgroundColor: const Color(0xFFEF4444),
              textColor: Colors.white,
            );
          },
          child: BlocBuilder<AddDebtCubit, AddDebtState>(
          builder: (context, state) {
            final isLoading = state.status == DataStatus.loading;
            return Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AmountField(),
                            const SizedBox(height: 16),
                            SplitSummary(
                              amount:      state.amount,
                              peopleCount: state.selectedContacts.length,
                            ),
                            const SizedBox(height: 20),
                            ContactPicker(
                              contacts:         state.contacts,
                              selectedContacts: state.selectedContacts,
                            ),
                            const SizedBox(height: 20),
                            NoteField(note: state.note),
                          ],
                        ),
                      ),
                    ),
                    BottomActions(
                      canSave:        cubit.canSave,
                      hasBankAccount: true,
                    ),
                  ],
                ),
                if (isLoading)
                  const ColoredBox(
                    color: Color(0x80000000),
                    child: Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    ),
                  ),
              ],
            );
          },
        ),
        ),
      ),
    );
  }
}
