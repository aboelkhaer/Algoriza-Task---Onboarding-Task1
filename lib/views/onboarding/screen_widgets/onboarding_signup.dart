import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_onboarding_auth/core/bindings/auth_bindings.dart';

import '../../auth/auth.dart';

class OnboardingSignUp extends StatelessWidget {
  const OnboardingSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have an account? ',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => const AuthScreen(), binding: AuthBindings());
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(color: Colors.blue, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
