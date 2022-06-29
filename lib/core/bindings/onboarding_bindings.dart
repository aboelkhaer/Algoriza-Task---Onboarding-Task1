import 'package:get/get.dart';
import '../../controllers/onboarding_controller.dart';

class OnboardingBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
  }
}
