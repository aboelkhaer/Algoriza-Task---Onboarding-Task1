import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPhoneController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxBool isSignIn = true.obs;

  String validateText(String input, String output) {
    if (input.isEmpty) return output;
    return '';
  }
}
