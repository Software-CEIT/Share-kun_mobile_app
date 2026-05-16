// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:package_info_plus/package_info_plus.dart' as _i655;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/addDebt/data/datasources/add_debt_local_datasource.dart'
    as _i531;
import '../../features/addDebt/data/datasources/add_debt_remote_datasource.dart'
    as _i810;
import '../../features/addDebt/data/repositories_impl/add_debt_repository_impl.dart'
    as _i929;
import '../../features/addDebt/domain/repository/add_debt_repository.dart'
    as _i167;
import '../../features/addDebt/domain/usecase/create_bank_account_usecase.dart'
    as _i756;
import '../../features/addDebt/domain/usecase/create_contact_usecase.dart'
    as _i255;
import '../../features/addDebt/domain/usecase/create_debt_usecase.dart'
    as _i462;
import '../../features/addDebt/domain/usecase/delete_bank_account_usecase.dart'
    as _i28;
import '../../features/addDebt/domain/usecase/find_contact_by_phone_usecase.dart'
    as _i476;
import '../../features/addDebt/domain/usecase/get_bank_accounts_usecase.dart'
    as _i189;
import '../../features/addDebt/domain/usecase/get_contact_users_usecase.dart'
    as _i318;
import '../../features/addDebt/domain/usecase/get_contacts_usecase.dart'
    as _i242;
import '../../features/addDebt/domain/usecase/get_saved_bank_account_usecase.dart'
    as _i517;
import '../../features/addDebt/domain/usecase/save_selected_bank_account_usecase.dart'
    as _i346;
import '../../features/addDebt/domain/usecase/search_users_usecase.dart'
    as _i604;
import '../../features/addDebt/presentation/cubit/add_bank_account_cubit.dart'
    as _i372;
import '../../features/addDebt/presentation/cubit/add_debt_cubit.dart' as _i994;
import '../../features/auth/data/datasources/auth_remote_datasource.dart'
    as _i161;
import '../../features/auth/data/repositories_impl/auth_repository_impl.dart'
    as _i710;
import '../../features/auth/domain/repository/auth_repository.dart' as _i961;
import '../../features/auth/domain/usecase/firebase_auth_usecase.dart' as _i561;
import '../../features/auth/domain/usecase/login_usecase.dart' as _i911;
import '../../features/auth/domain/usecase/register_usecase.dart' as _i769;
import '../../features/auth/presentation/cubit/auth_cubit.dart' as _i117;
import '../../features/friend/data/datasources/friend_remote_datasource.dart'
    as _i770;
import '../../features/friend/data/repositories_impl/friend_repository_impl.dart'
    as _i556;
import '../../features/friend/domain/repository/friend_repository.dart'
    as _i298;
import '../../features/friend/domain/usecase/get_friends_usecase.dart' as _i547;
import '../../features/friend/presentation/cubit/add_friend_cubit.dart' as _i38;
import '../../features/friend/presentation/cubit/friend_cubit.dart' as _i183;
import '../../features/home/data/datasources/home_local_datasource.dart'
    as _i314;
import '../../features/home/data/datasources/home_remote_datasource.dart'
    as _i278;
import '../../features/home/data/repositories_impl/home_repository_impl.dart'
    as _i90;
import '../../features/home/domain/repository/home_repository.dart' as _i541;
import '../../features/home/domain/usecase/add_recent_search_usecase.dart'
    as _i645;
import '../../features/home/domain/usecase/delete_debt_usecase.dart' as _i788;
import '../../features/home/domain/usecase/get_debts_usecase.dart' as _i788;
import '../../features/home/domain/usecase/update_debt_status_usecase.dart'
    as _i633;
import '../../features/home/presentation/cubit/home_cubit.dart' as _i9;
import '../../features/profile/data/datasources/profile_remote_datasource.dart'
    as _i327;
import '../../features/profile/data/repositories_impl/profile_repository_impl.dart'
    as _i357;
import '../../features/profile/domain/repository/profile_repository.dart'
    as _i364;
import '../../features/profile/domain/usecase/get_profile_usecase.dart'
    as _i304;
import '../../features/profile/domain/usecase/update_language_usecase.dart'
    as _i206;
import '../../features/profile/domain/usecase/update_profile_usecase.dart'
    as _i550;
import '../../features/profile/presentation/cubit/profile_cubit.dart' as _i36;
import '../../router/app_router.dart' as _i630;
import '../../router/guards/authentication_guard.dart' as _i775;
import '../../service/shared_preference_service.dart' as _i538;
import '../network/network_call.dart' as _i536;
import 'register_modules.dart' as _i8;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectionModule = _$InjectionModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => injectionModule.sharedPreferences(),
      preResolve: true,
    );
    await gh.factoryAsync<_i655.PackageInfo>(
      () => injectionModule.packageInfo(),
      preResolve: true,
    );
    gh.lazySingleton<_i775.AuthGuard>(() => injectionModule.authGuard());
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => injectionModule.flutterSecureStorage(),
    );
    gh.lazySingleton<_i538.SharedPreferenceService>(
      () => _i538.SharedPreferenceService(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i630.AppRouter>(
      () => injectionModule.appRouter(gh<_i538.SharedPreferenceService>()),
    );
    gh.lazySingleton<_i314.HomeLocalDatasource>(
      () => _i314.HomeLocalDatasourceImpl(gh<_i538.SharedPreferenceService>()),
    );
    gh.lazySingleton<_i531.AddDebtLocalDatasource>(
      () =>
          _i531.AddDebtLocalDatasourceImpl(gh<_i538.SharedPreferenceService>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => injectionModule.dio(
        gh<_i538.SharedPreferenceService>(),
        gh<_i630.AppRouter>(),
      ),
    );
    gh.lazySingleton<_i536.RestClient>(
      () => injectionModule.restClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i278.ServiceRemoteDatasource>(
      () => _i278.ServiceRemoteDatasourceImpl(gh<_i536.RestClient>()),
    );
    gh.lazySingleton<_i541.HomeRepository>(
      () => _i90.HomeRepositoryImpl(gh<_i278.ServiceRemoteDatasource>()),
    );
    gh.lazySingleton<_i161.AuthRemoteDatasource>(
      () => _i161.AuthRemoteDatasourceImpl(gh<_i536.RestClient>()),
    );
    gh.lazySingleton<_i770.FriendRemoteDatasource>(
      () => _i770.FriendRemoteDatasourceImpl(gh<_i536.RestClient>()),
    );
    gh.lazySingleton<_i645.AddRecentSearchUsecase>(
      () => _i645.AddRecentSearchUsecase(gh<_i541.HomeRepository>()),
    );
    gh.lazySingleton<_i788.DeleteDebtUsecase>(
      () => _i788.DeleteDebtUsecase(gh<_i541.HomeRepository>()),
    );
    gh.lazySingleton<_i633.UpdateDebtStatusUsecase>(
      () => _i633.UpdateDebtStatusUsecase(gh<_i541.HomeRepository>()),
    );
    gh.lazySingleton<_i961.AuthRepository>(
      () => _i710.AuthRepositoryImpl(
        gh<_i161.AuthRemoteDatasource>(),
        gh<_i538.SharedPreferenceService>(),
      ),
    );
    gh.lazySingleton<_i298.FriendRepository>(
      () => _i556.FriendRepositoryImpl(gh<_i770.FriendRemoteDatasource>()),
    );
    gh.lazySingleton<_i327.ProfileRemoteDatasource>(
      () => _i327.ProfileRemoteDatasourceImpl(gh<_i536.RestClient>()),
    );
    gh.lazySingleton<_i810.AddDebtRemoteDatasource>(
      () => _i810.AddDebtRemoteDatasourceImpl(gh<_i536.RestClient>()),
    );
    gh.lazySingleton<_i561.FirebaseAuthUsecase>(
      () => _i561.FirebaseAuthUsecase(gh<_i961.AuthRepository>()),
    );
    gh.lazySingleton<_i911.LoginUsecase>(
      () => _i911.LoginUsecase(gh<_i961.AuthRepository>()),
    );
    gh.lazySingleton<_i769.RegisterUsecase>(
      () => _i769.RegisterUsecase(gh<_i961.AuthRepository>()),
    );
    gh.lazySingleton<_i547.GetFriendsUsecase>(
      () => _i547.GetFriendsUsecase(gh<_i298.FriendRepository>()),
    );
    gh.lazySingleton<_i364.ProfileRepository>(
      () => _i357.ProfileRepositoryImpl(gh<_i327.ProfileRemoteDatasource>()),
    );
    gh.lazySingleton<_i304.GetProfileUsecase>(
      () => _i304.GetProfileUsecase(gh<_i364.ProfileRepository>()),
    );
    gh.lazySingleton<_i206.UpdateLanguageUsecase>(
      () => _i206.UpdateLanguageUsecase(gh<_i364.ProfileRepository>()),
    );
    gh.lazySingleton<_i550.UpdateProfileUsecase>(
      () => _i550.UpdateProfileUsecase(gh<_i364.ProfileRepository>()),
    );
    gh.lazySingleton<_i788.GetDebtsUsecase>(
      () => _i788.GetDebtsUsecase(
        gh<_i541.HomeRepository>(),
        gh<_i314.HomeLocalDatasource>(),
      ),
    );
    gh.factory<_i117.AuthCubit>(
      () => _i117.AuthCubit(
        gh<_i911.LoginUsecase>(),
        gh<_i769.RegisterUsecase>(),
        gh<_i561.FirebaseAuthUsecase>(),
      ),
    );
    gh.factory<_i183.FriendCubit>(
      () => _i183.FriendCubit(gh<_i547.GetFriendsUsecase>()),
    );
    gh.lazySingleton<_i167.AddDebtRepository>(
      () => _i929.AddDebtRepositoryImpl(
        gh<_i810.AddDebtRemoteDatasource>(),
        gh<_i531.AddDebtLocalDatasource>(),
      ),
    );
    gh.factory<_i9.HomeCubit>(
      () => _i9.HomeCubit(
        gh<_i788.GetDebtsUsecase>(),
        gh<_i633.UpdateDebtStatusUsecase>(),
        gh<_i788.DeleteDebtUsecase>(),
      ),
    );
    gh.lazySingleton<_i756.CreateBankAccountUsecase>(
      () => _i756.CreateBankAccountUsecase(gh<_i167.AddDebtRepository>()),
    );
    gh.lazySingleton<_i255.CreateContactUsecase>(
      () => _i255.CreateContactUsecase(gh<_i167.AddDebtRepository>()),
    );
    gh.lazySingleton<_i462.CreateDebtUsecase>(
      () => _i462.CreateDebtUsecase(gh<_i167.AddDebtRepository>()),
    );
    gh.lazySingleton<_i28.DeleteBankAccountUsecase>(
      () => _i28.DeleteBankAccountUsecase(gh<_i167.AddDebtRepository>()),
    );
    gh.lazySingleton<_i476.FindContactByPhoneUsecase>(
      () => _i476.FindContactByPhoneUsecase(gh<_i167.AddDebtRepository>()),
    );
    gh.lazySingleton<_i189.GetBankAccountsUsecase>(
      () => _i189.GetBankAccountsUsecase(gh<_i167.AddDebtRepository>()),
    );
    gh.lazySingleton<_i318.GetContactUsersUsecase>(
      () => _i318.GetContactUsersUsecase(gh<_i167.AddDebtRepository>()),
    );
    gh.lazySingleton<_i242.GetContactsUsecase>(
      () => _i242.GetContactsUsecase(gh<_i167.AddDebtRepository>()),
    );
    gh.lazySingleton<_i517.GetSavedBankAccountUsecase>(
      () => _i517.GetSavedBankAccountUsecase(gh<_i167.AddDebtRepository>()),
    );
    gh.lazySingleton<_i346.SaveSelectedBankAccountUsecase>(
      () => _i346.SaveSelectedBankAccountUsecase(gh<_i167.AddDebtRepository>()),
    );
    gh.lazySingleton<_i604.SearchUsersUsecase>(
      () => _i604.SearchUsersUsecase(gh<_i167.AddDebtRepository>()),
    );
    gh.factory<_i372.AddBankAccountCubit>(
      () => _i372.AddBankAccountCubit(
        gh<_i189.GetBankAccountsUsecase>(),
        gh<_i756.CreateBankAccountUsecase>(),
        gh<_i28.DeleteBankAccountUsecase>(),
        gh<_i346.SaveSelectedBankAccountUsecase>(),
      ),
    );
    gh.factory<_i36.ProfileCubit>(
      () => _i36.ProfileCubit(
        gh<_i304.GetProfileUsecase>(),
        gh<_i550.UpdateProfileUsecase>(),
        gh<_i206.UpdateLanguageUsecase>(),
        gh<_i189.GetBankAccountsUsecase>(),
        gh<_i538.SharedPreferenceService>(),
      ),
    );
    gh.factory<_i38.AddFriendCubit>(
      () => _i38.AddFriendCubit(
        gh<_i476.FindContactByPhoneUsecase>(),
        gh<_i604.SearchUsersUsecase>(),
        gh<_i255.CreateContactUsecase>(),
      ),
    );
    gh.factory<_i994.AddDebtCubit>(
      () => _i994.AddDebtCubit(
        gh<_i547.GetFriendsUsecase>(),
        gh<_i189.GetBankAccountsUsecase>(),
        gh<_i462.CreateDebtUsecase>(),
        gh<_i517.GetSavedBankAccountUsecase>(),
        gh<_i346.SaveSelectedBankAccountUsecase>(),
        gh<_i531.AddDebtLocalDatasource>(),
      ),
    );
    return this;
  }
}

class _$InjectionModule extends _i8.InjectionModule {}
