import 'package:get/get.dart';
import 'package:task1_onboarding_auth/controllers/auth_controller.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
