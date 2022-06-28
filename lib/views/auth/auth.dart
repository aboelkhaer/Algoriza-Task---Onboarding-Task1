import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_onboarding_auth/views/auth/screen_widgets/screen_widgets.dart';
import 'package:task1_onboarding_auth/views/widgets/custom_button.dart';
import '../../controllers/controllers.dart';

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
                  children: [
                    const AuthTitle(),
                    const SizedBox(height: 20),
                    const AuthForm(),
                    const AuthForgetPassword(),
                    CustomButtom(
                        child: Obx(() => Text(
                            controller.isSignIn.value ? 'Sign In' : 'Sign Up',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        onPressed: () {
                          if (controller.formKey.currentState!.validate()) {}
                        }),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 30),
                      child: const Text('OR'),
                    ),
                    const AuthGoogle(),
                    const AuthDonotHaveAccount(),
                    const SizedBox(height: 30),
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
