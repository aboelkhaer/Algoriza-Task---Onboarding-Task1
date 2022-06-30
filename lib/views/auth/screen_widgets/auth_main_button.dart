import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/auth_controller.dart';
import '../../widgets/widgets.dart';

class AuthMainButton extends GetView<AuthController> {
  const AuthMainButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: CustomButtom(
          child:
              Obx(() => Text(controller.isSignIn.value ? 'Sign In' : 'Register',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ))),
          onPressed: () {
            if (controller.formKey.currentState!.validate()) {
              controller.isSignIn.value
                  ? Get.snackbar(
                      'Sign in',
                      'You have successfully signed in.',
                      colorText: Colors.green,
                      snackPosition: SnackPosition.BOTTOM,
                      margin: const EdgeInsets.only(bottom: 20) +
                          const EdgeInsets.symmetric(horizontal: 16),
                    )
                  : Get.snackbar(
                      'Register', 'You have successfully Registered.',
                      colorText: Colors.green,
                      snackPosition: SnackPosition.BOTTOM,
                      margin: const EdgeInsets.only(bottom: 20) +
                          const EdgeInsets.symmetric(horizontal: 16));
            }
          }),
    );
  }
}
