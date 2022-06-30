import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/auth_controller.dart';
import '../../widgets/widgets.dart';

class AuthCustomButton extends GetView<AuthController> {
  const AuthCustomButton({Key? key}) : super(key: key);

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
            if (controller.formKey.currentState!.validate()) {}
          }),
    );
  }
}
