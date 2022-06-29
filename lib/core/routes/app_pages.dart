import 'package:get/get.dart';

import '../../views/views.dart';
import '../bindings/bindings.dart';

class AppRoutes {
  static const String onboarding = '/onboarding';
  static String goToOnboardingRoute() => onboarding;

  static const String authScreen = '/authScreen';
  static String goToAuthRoute() => authScreen;

  static List<GetPage> routes = [
    GetPage(
        page: () => const Onboarding(),
        name: onboarding,
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 800),
        binding: OnboardingBindings()),
    GetPage(
        page: () => const AuthScreen(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 800),
        name: authScreen,
        binding: AuthBindings()),
  ];
}
