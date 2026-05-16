import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // Add your authentication logic here
    // Example:
    // final token = prefs.getUserToken();
    // if (token != null) {
    //   resolver.next(true);
    // } else {
    //   router.replaceAll([LoginRoute()]);
    // }
    resolver.next(true);
  }
}
