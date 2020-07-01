import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:lowkey/presentation/home/home_page.dart';
import 'package:lowkey/presentation/sign_in/sign_in_page.dart';
import 'package:lowkey/presentation/sign_up/sign_up_page.dart';
import 'package:lowkey/presentation/splash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
@CustomAutoRouter(
    transitionsBuilder: TransitionsBuilders.fadeIn, durationInMilliseconds: 200)
class $Router {
  @initial
  @CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 200)
  SplashPage splashPage;

  @CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 200)
  SignInPage signInPage;

  @CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 200)
  SignUpPage signUpPage;

  @CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 200)
  HomePage homePage;
}
