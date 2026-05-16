import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/features/auth/domain/entities/auth_user_entity.dart';
import 'package:share_kun/features/auth/domain/usecase/firebase_auth_usecase.dart';
import 'package:share_kun/features/auth/domain/usecase/login_usecase.dart';
import 'package:share_kun/features/auth/domain/usecase/register_usecase.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final LoginUsecase _loginUsecase;
  final RegisterUsecase _registerUsecase;
  final FirebaseAuthUsecase _firebaseAuthUsecase;

  String? _verificationId;

  AuthCubit(
    this._loginUsecase,
    this._registerUsecase,
    this._firebaseAuthUsecase,
  ) : super(const AuthState());

  Future<void> login({
    required String phone,
    required String password,
  }) async {
    emit(state.copyWith(status: DataStatus.loading, errorMessage: null));
    try {
      final user = await _loginUsecase(phone: phone, password: password);
      emit(state.copyWith(status: DataStatus.success, user: user));
    } catch (e) {
      emit(state.copyWith(
        status: DataStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> register({
    required String name,
    required String phone,
    required String password,
  }) async {
    emit(state.copyWith(status: DataStatus.loading, errorMessage: null));
    try {
      final user = await _registerUsecase(
        name: name,
        phone: phone,
        password: password,
      );
      emit(state.copyWith(status: DataStatus.success, user: user));
    } catch (e) {
      emit(state.copyWith(
        status: DataStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> firebaseAuth(String idToken) async {
    emit(state.copyWith(status: DataStatus.loading, errorMessage: null));
    try {
      final user = await _firebaseAuthUsecase(idToken);
      emit(state.copyWith(status: DataStatus.success, user: user));
    } catch (e) {
      emit(state.copyWith(
        status: DataStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> sendOTP(String phone) async {
    emit(state.copyWith(status: DataStatus.loading, errorMessage: null));
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+856$phone',
      verificationCompleted: (PhoneAuthCredential credential) async {
        // Auto-verify on Android — sign in immediately
        final result = await FirebaseAuth.instance.signInWithCredential(credential);
        final idToken = await result.user?.getIdToken();
        if (idToken != null) await firebaseAuth(idToken);
      },
      verificationFailed: (FirebaseAuthException e) {
        emit(state.copyWith(
          status: DataStatus.failure,
          errorMessage: e.message ?? 'Verification failed',
        ));
      },
      codeSent: (String verId, int? resendToken) {
        _verificationId = verId;
        emit(state.copyWith(status: DataStatus.initial, otpSent: true));
      },
      codeAutoRetrievalTimeout: (_) {},
    );
  }

  Future<void> verifyOTP(
    String smsCode, {
    String? name,
    String? phone,
    String? password,
  }) async {
    if (_verificationId == null) return;
    emit(state.copyWith(status: DataStatus.loading, errorMessage: null));
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!,
        smsCode: smsCode,
      );
      final result = await FirebaseAuth.instance.signInWithCredential(credential);
      final idToken = await result.user?.getIdToken();
      if (idToken == null) throw Exception('Could not retrieve ID token');

      // Registration flow — call register API after Firebase verification
      if (name != null && phone != null && password != null) {
        final user = await _registerUsecase(
          name: name,
          phone: phone,
          password: password,
        );
        emit(state.copyWith(status: DataStatus.success, user: user));
      } else {
        // Login / standalone firebase auth flow
        await firebaseAuth(idToken);
      }
    } catch (e) {
      emit(state.copyWith(
        status: DataStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
