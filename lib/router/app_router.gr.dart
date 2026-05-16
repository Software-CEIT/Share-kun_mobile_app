// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddBankAccountFormPage]
class AddBankAccountFormRoute extends PageRouteInfo<void> {
  const AddBankAccountFormRoute({List<PageRouteInfo>? children})
    : super(AddBankAccountFormRoute.name, initialChildren: children);

  static const String name = 'AddBankAccountFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AddBankAccountFormPage());
    },
  );
}

/// generated route for
/// [AddBankAccountPage]
class AddBankAccountRoute extends PageRouteInfo<void> {
  const AddBankAccountRoute({List<PageRouteInfo>? children})
    : super(AddBankAccountRoute.name, initialChildren: children);

  static const String name = 'AddBankAccountRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddBankAccountPage();
    },
  );
}

/// generated route for
/// [AddDebtPage]
class AddDebtRoute extends PageRouteInfo<void> {
  const AddDebtRoute({List<PageRouteInfo>? children})
    : super(AddDebtRoute.name, initialChildren: children);

  static const String name = 'AddDebtRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AddDebtPage());
    },
  );
}

/// generated route for
/// [AddFriendPage]
class AddFriendRoute extends PageRouteInfo<void> {
  const AddFriendRoute({List<PageRouteInfo>? children})
    : super(AddFriendRoute.name, initialChildren: children);

  static const String name = 'AddFriendRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AddFriendPage());
    },
  );
}

/// generated route for
/// [DebtDetailPage]
class DebtDetailRoute extends PageRouteInfo<DebtDetailRouteArgs> {
  DebtDetailRoute({
    Key? key,
    required DebtActivityEntities activity,
    List<PageRouteInfo>? children,
  }) : super(
         DebtDetailRoute.name,
         args: DebtDetailRouteArgs(key: key, activity: activity),
         initialChildren: children,
       );

  static const String name = 'DebtDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DebtDetailRouteArgs>();
      return DebtDetailPage(key: args.key, activity: args.activity);
    },
  );
}

class DebtDetailRouteArgs {
  const DebtDetailRouteArgs({this.key, required this.activity});

  final Key? key;

  final DebtActivityEntities activity;

  @override
  String toString() {
    return 'DebtDetailRouteArgs{key: $key, activity: $activity}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DebtDetailRouteArgs) return false;
    return key == other.key && activity == other.activity;
  }

  @override
  int get hashCode => key.hashCode ^ activity.hashCode;
}

/// generated route for
/// [EditProfilePage]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute({List<PageRouteInfo>? children})
    : super(EditProfileRoute.name, initialChildren: children);

  static const String name = 'EditProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EditProfilePage();
    },
  );
}

/// generated route for
/// [FriendPage]
class FriendRoute extends PageRouteInfo<void> {
  const FriendRoute({List<PageRouteInfo>? children})
    : super(FriendRoute.name, initialChildren: children);

  static const String name = 'FriendRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const FriendPage());
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HomePage());
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const LoginPage());
    },
  );
}

/// generated route for
/// [MainNavigationPage]
class MainNavigationRoute extends PageRouteInfo<void> {
  const MainNavigationRoute({List<PageRouteInfo>? children})
    : super(MainNavigationRoute.name, initialChildren: children);

  static const String name = 'MainNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainNavigationPage();
    },
  );
}

/// generated route for
/// [OtpPage]
class OtpRoute extends PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    Key? key,
    required String phone,
    String? name,
    String? password,
    List<PageRouteInfo>? children,
  }) : super(
         OtpRoute.name,
         args: OtpRouteArgs(
           key: key,
           phone: phone,
           name: name,
           password: password,
         ),
         initialChildren: children,
       );

  static const String name = 'OtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpRouteArgs>();
      return WrappedRoute(
        child: OtpPage(
          key: args.key,
          phone: args.phone,
          name: args.name,
          password: args.password,
        ),
      );
    },
  );
}

class OtpRouteArgs {
  const OtpRouteArgs({this.key, required this.phone, this.name, this.password});

  final Key? key;

  final String phone;

  final String? name;

  final String? password;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, phone: $phone, name: $name, password: $password}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OtpRouteArgs) return false;
    return key == other.key &&
        phone == other.phone &&
        name == other.name &&
        password == other.password;
  }

  @override
  int get hashCode =>
      key.hashCode ^ phone.hashCode ^ name.hashCode ^ password.hashCode;
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ProfilePage());
    },
  );
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
    : super(RegisterRoute.name, initialChildren: children);

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const RegisterPage());
    },
  );
}

/// generated route for
/// [SelectBankAccountPage]
class SelectBankAccountRoute extends PageRouteInfo<SelectBankAccountRouteArgs> {
  SelectBankAccountRoute({
    Key? key,
    required List<BankAccountEntity> bankAccounts,
    List<PageRouteInfo>? children,
  }) : super(
         SelectBankAccountRoute.name,
         args: SelectBankAccountRouteArgs(key: key, bankAccounts: bankAccounts),
         initialChildren: children,
       );

  static const String name = 'SelectBankAccountRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectBankAccountRouteArgs>();
      return WrappedRoute(
        child: SelectBankAccountPage(
          key: args.key,
          bankAccounts: args.bankAccounts,
        ),
      );
    },
  );
}

class SelectBankAccountRouteArgs {
  const SelectBankAccountRouteArgs({this.key, required this.bankAccounts});

  final Key? key;

  final List<BankAccountEntity> bankAccounts;

  @override
  String toString() {
    return 'SelectBankAccountRouteArgs{key: $key, bankAccounts: $bankAccounts}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SelectBankAccountRouteArgs) return false;
    return key == other.key &&
        const ListEquality<BankAccountEntity>().equals(
          bankAccounts,
          other.bankAccounts,
        );
  }

  @override
  int get hashCode =>
      key.hashCode ^ const ListEquality<BankAccountEntity>().hash(bankAccounts);
}

/// generated route for
/// [SelectLanguagePage]
class SelectLanguageRoute extends PageRouteInfo<void> {
  const SelectLanguageRoute({List<PageRouteInfo>? children})
    : super(SelectLanguageRoute.name, initialChildren: children);

  static const String name = 'SelectLanguageRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SelectLanguagePage();
    },
  );
}
