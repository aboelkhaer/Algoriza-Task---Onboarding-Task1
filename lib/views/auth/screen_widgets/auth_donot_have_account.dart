import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/auth_controller.dart';

class AuthDonotHaveAccount extends GetView<AuthController> {
  const AuthDonotHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text(
            controller.isSignIn.value
                ? 'Don\'t have account? '
                : 'You have account? ',
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            controller.isSignIn.value = !controller.isSignIn.value;
            controller.formKey.currentState!.reset();
            controller.userPhoneController.clear();
            controller.userEmailController.clear();
          },
          child: Obx(
            () => Text(
              controller.isSignIn.value ? 'Register now' : 'Sign In',
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF5ABD8C),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
