import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_onboarding_auth/views/auth/screen_widgets/auth_Custom_button.dart';

import '../../controllers/controllers.dart';
import '../widgets/custom_button.dart';
import 'screen_widgets/screen_widgets.dart';

class AuthScreen extends GetView<AuthController> {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const AuthImage(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    AuthTitle(),
                    SizedBox(height: 16),
                    AuthForm(),
                    AuthForgetPassword(),
                    AuthCustomButton(),
                    AuthOrLine(),
                    AuthGoogle(),
                    AuthDonotHaveAccount(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
