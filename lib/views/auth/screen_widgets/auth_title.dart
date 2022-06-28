import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_onboarding_auth/controllers/auth_controller.dart';

class AuthTitle extends GetView<AuthController> {
  const AuthTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => Text(
            controller.isSignIn.value ? 'Sign In' : 'Sign Up',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: const [
            Text(
              'Help',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.help,
              color: Colors.blue,
              size: 20,
            )
          ],
        ),
      ],
    );
  }
}
