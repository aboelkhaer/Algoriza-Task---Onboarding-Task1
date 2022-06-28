import 'package:get/get.dart';
import 'package:task1_onboarding_auth/controllers/onboarding_controller.dart';

class OnboardingBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
  }
}
