import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/auth_controller.dart';

class AuthGoogle extends GetView<AuthController> {
  const AuthGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: const Color(0xFF5ABD8C)),
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/google.png',
            height: 20,
          ),
          const SizedBox(width: 15),
          Obx(
            () => Text(
              controller.isSignIn.value
                  ? 'Sign in with Google'
                  : 'Sign up with Google',
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
