import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPhoneController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onClose() {
    userEmailController.dispose();
    userPhoneController.dispose();
    userPasswordController.dispose();
    super.onClose();
  }

  RxBool isSignIn = true.obs;
}
