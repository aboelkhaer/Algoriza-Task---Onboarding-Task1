import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';

class AuthForgetPassword extends GetView<AuthController> {
  const AuthForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isSignIn.value
          ? Container(
              padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ) +
                  const EdgeInsets.only(bottom: 30),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14,
                  ),
                ),
              ),
            )
          : Container(),
    );
  }
}
