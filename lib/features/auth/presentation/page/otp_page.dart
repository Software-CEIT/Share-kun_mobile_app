import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:share_kun/core/constants/app_colors.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/core/di/injectable.dart';
import 'package:share_kun/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:share_kun/generated/locale_keys.g.dart';
import 'package:share_kun/router/app_router.dart';
import 'package:sms_autofill/sms_autofill.dart';

@RoutePage()
class OtpPage extends StatefulWidget implements AutoRouteWrapper {
  final String phone;
  final String? name;
  final String? password;
  const OtpPage({
    super.key,
    required this.phone,
    this.name,
    this.password,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: this,
    );
  }

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> with CodeAutoFill {
  final _otpController = TextEditingController();
  int _secondsLeft = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _listenForSms();
  }

  Future<void> _listenForSms() async {
    await SmsAutoFill().listenForCode();
  }

  @override
  void codeUpdated() {
    if (code != null) {
      setState(() => _otpController.text = code!);
    }
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() => _secondsLeft = 60);
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_secondsLeft == 0) {
        t.cancel();
      } else {
        setState(() => _secondsLeft--);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _otpController.dispose();
    SmsAutoFill().unregisterListener();
    cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.otpSent) {
          _startTimer();
        }
        if (state.status == DataStatus.success) {
          context.router.replaceAll([const MainNavigationRoute()]);
        } else if (state.status == DataStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage ?? 'Verification failed')),
          );
        }
      },
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          final isLoading = state.status == DataStatus.loading;
          return Scaffold(
            backgroundColor: AppColors.white,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // ── Back ──────────────────────────────────────────────────
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () => context.router.pop(),
                          icon: const Icon(Icons.arrow_back_ios_new_rounded,
                              size: 20, color: Color(0xFF1A1A2E)),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                      ),
                      const SizedBox(height: 32),

                      // ── Phone icon ────────────────────────────────────────────
                      Center(
                        child: Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            color: const Color(0xFF4A90D9).withValues(alpha: 0.12),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.phone_android_rounded,
                            size: 36,
                            color: Color(0xFF4A90D9),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // ── Title ─────────────────────────────────────────────────
                      Text(
                        LocaleKeys.auth_otp_title.tr(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A1A2E),
                        ),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF6B7280),
                            height: 1.5,
                          ),
                          children: [
                            TextSpan(text: '${LocaleKeys.auth_otp_subtitle.tr()} '),
                            TextSpan(
                              text: widget.phone,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF1A1A2E),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 36),

                      // ── OTP Pin Code Field ────────────────────────────────────
                      PinCodeTextField(
                        appContext: context,
                        length: 6,
                        controller: _otpController,
                        keyboardType: TextInputType.number,
                        animationType: AnimationType.fade,
                        autoFocus: true,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(12),
                          fieldHeight: 56,
                          fieldWidth: 48,
                          activeFillColor: Colors.white,
                          inactiveFillColor: const Color(0xFFF3F4F6),
                          selectedFillColor: Colors.white,
                          activeColor: const Color(0xFF4A90D9),
                          inactiveColor: const Color(0xFFE5E7EB),
                          selectedColor: const Color(0xFF4A90D9),
                          borderWidth: 1.5,
                        ),
                        enableActiveFill: true,
                        textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A1A2E),
                        ),
                        onChanged: (_) {},
                        onCompleted: (_) {},
                      ),
                      const SizedBox(height: 20),

                      // ── Resend ────────────────────────────────────────────────
                      Center(
                        child: _secondsLeft > 0
                            ? Text(
                                LocaleKeys.auth_otp_resend_in.tr(
                                  namedArgs: {'seconds': '$_secondsLeft'},
                                ),
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF9CA3AF),
                                ),
                              )
                            : TextButton(
                                onPressed: () => context.read<AuthCubit>().sendOTP(widget.phone),
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size.zero,
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Text(
                                  LocaleKeys.auth_otp_resend.tr(),
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF4A90D9),
                                  ),
                                ),
                              ),
                      ),
                      const SizedBox(height: 32),

                      // ── Verify button ─────────────────────────────────────────
                      ElevatedButton(
                        onPressed: isLoading
                            ? null
                            : () => context.read<AuthCubit>().verifyOTP(
                                  _otpController.text,
                                  name: widget.name,
                                  phone: widget.phone,
                                  password: widget.password,
                                ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4A90D9),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: isLoading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : Text(
                                LocaleKeys.auth_verify.tr(),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
