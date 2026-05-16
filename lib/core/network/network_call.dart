import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:share_kun/core/constants/api_path.dart';
import 'package:share_kun/features/auth/data/model/auth_models.dart';
import 'package:share_kun/features/profile/data/model/profile_models.dart';
import 'package:share_kun/features/addDebt/data/model/bank_account_model.dart';
import 'package:share_kun/features/addDebt/data/model/bank_account_list_response_model.dart';
import 'package:share_kun/features/addDebt/data/model/create_bank_account_request_model.dart';
import 'package:share_kun/features/addDebt/data/model/contact_model.dart';
import 'package:share_kun/features/addDebt/data/model/user_search_model.dart';
import 'package:share_kun/features/addDebt/data/model/create_debt_request_model.dart';
import 'package:share_kun/features/friend/data/model/friend_model.dart';
import 'package:share_kun/features/home/data/model/debt_activity_model.dart';

part 'network_call.g.dart';

@RestApi(baseUrl: ApiPath.baseUrl)
abstract class RestClient {
  factory RestClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _RestClient;

  // ── Auth ────────────────────────────────────────────────────────────────────

  /// Firebase Phone OTP — pass Firebase ID token as Bearer header
  @POST(ApiPath.firebaseAuth)
  Future<AuthResponseModel> firebaseAuth(
    @Header('Authorization') String bearer,
  );

  @POST(ApiPath.register)
  Future<AuthResponseModel> register(@Body() RegisterRequestModel body);

  @POST(ApiPath.login)
  Future<AuthResponseModel> login(@Body() LoginRequestModel body);

  @POST(ApiPath.refreshToken)
  Future<RefreshTokenResponseModel> refreshAuthToken(
    @Body() RefreshTokenRequestModel body,
  );

  @POST(ApiPath.forgotPassword)
  Future<void> forgotPassword(@Body() ForgotPasswordRequestModel body);

  // ── Profile ─────────────────────────────────────────────────────────────────

  @GET(ApiPath.profile)
  Future<ProfileModel> getProfile();

  @PATCH(ApiPath.profile)
  @MultiPart()
  Future<ProfileModel> updateProfile(
    @Part(name: 'name') String? name,
    @Part(name: 'avatar') File? avatar,
  );

  @PATCH(ApiPath.profileLanguage)
  Future<void> updateLanguage(@Body() UpdateLanguageRequestModel body);

  // ── Bank Accounts ───────────────────────────────────────────────────────────

  @GET(ApiPath.bankAccounts)
  Future<BankAccountListResponseModel> getBankAccounts();

  @POST(ApiPath.bankAccounts)
  Future<BankAccountModel> createBankAccount(
    @Body() CreateBankAccountRequestModel body,
  );

  @DELETE('{path}')
  Future<void> deleteBankAccount(@Path('path') String path);

  // ── Contacts ─────────────────────────────────────────────────────────────────

  @GET(ApiPath.contacts)
  Future<ContactListResponseModel> getContacts({
    @Query('search') String? search,
  });

  @POST(ApiPath.contacts)
  Future<ContactModel> createContact(@Body() CreateContactRequestModel body);

  @POST(ApiPath.contactsByPhone)
  Future<UserModel> findContactByPhone(@Body() FindByPhoneRequestModel body);

  @GET(ApiPath.contactsSearchUsers)
  Future<UserSearchListResponseModel> searchUsers({
    @Query('q') String? q,
  });

  @GET(ApiPath.contactsUsers)
  Future<ContactUsersPagedResponseModel> getContactUsers({
    @Query('limit') int? limit,
    @Query('page') int? page,
  });

  // ── Friends ──────────────────────────────────────────────────────────────────

  @GET(ApiPath.friends)
  Future<FriendListResponseModel> getFriends({
    @Query('search') String? search,
    @Query('page') int? page,
    @Query('limit') int? limit,
  });

  // ── Debts ────────────────────────────────────────────────────────────────────

  @GET(ApiPath.debts)
  Future<List<DebtActivityModel>> getDebts({
    @Query('type') String? type,
    @Query('status') String? status,
  });

  @POST(ApiPath.debts)
  Future<void> createDebt(
    @Body() CreateDebtRequestModel body,
  );

  @PATCH('{path}')
  Future<void> updateDebtStatus(
    @Path('path') String path,
    @Body() UpdateDebtStatusRequestModel body,
  );

  @DELETE('{path}')
  Future<void> deleteDebt(@Path('path') String path);
}
