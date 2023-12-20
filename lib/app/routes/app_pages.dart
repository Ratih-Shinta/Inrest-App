import 'package:get/get_navigation/get_navigation.dart';
import 'package:inrest_app/app/pages/landing_page/bindings/landing_page_binding.dart';
import 'package:inrest_app/app/pages/landing_page/views/landing_page_view.dart';
import 'package:inrest_app/app/pages/login_page/bindings/login_page_binding.dart';
import 'package:inrest_app/app/pages/login_page/views/login_page_view.dart';
import 'package:inrest_app/app/pages/on_boarding/bindings/on_boarding_bindings.dart';
import 'package:inrest_app/app/pages/on_boarding/view/on_boarding_view.dart';
import 'package:inrest_app/app/pages/register_page/bindings/register_page_binding.dart';
import 'package:inrest_app/app/pages/register_page/views/register_page_view.dart';
import 'package:inrest_app/app/pages/splash_screen/binding/splash_screen_binding.dart';
import 'package:inrest_app/app/pages/splash_screen/view/splash_screen_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ON_BOARDING,
      page: () => OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.LANDING_PAGE,
      page: () => LandingPageView(),
      binding: LandingPageBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => RegisterPageView(),
      binding: RegisterPageBinding(),
    ),
  ];
}