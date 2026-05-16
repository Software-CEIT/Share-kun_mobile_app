class ApiPath {
  static const String baseUrl = 'https://uneffective-cristian-nonnebulously.ngrok-free.dev/v1/';
  // static const String baseUrl = 'http://localhost:3001/v1/';

  // Auth
  static const String firebaseAuth   = 'auth/firebase';
  static const String login          = 'auth/login';
  static const String register       = 'auth/register';
  static const String refreshToken   = 'auth/refresh-token';
  static const String forgotPassword = 'auth/forgot-password';

  // Profile
  static const String profile         = 'profile';
  static const String profileLanguage = 'profile/language';

  // Resources
  static const String bankAccounts = 'bank-accounts';
  static const String contacts            = 'contacts';
  static const String contactsByPhone     = 'contacts/by-phone';
  static const String contactsSearchUsers = 'contacts/search-users';
  static const String contactsUsers       = 'contacts/users';
  static const String friends             = 'friends';
  static const String debts        = 'debts';
}
