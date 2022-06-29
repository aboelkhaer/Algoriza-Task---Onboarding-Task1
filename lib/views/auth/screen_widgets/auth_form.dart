import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_onboarding_auth/views/widgets/custom_text_form.dart';
import '../../../controllers/auth_controller.dart';

class AuthForm extends GetView<AuthController> {
  const AuthForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          SizedBox(
            height: 80,
            child: CustomTextFormField(
              controller: controller.userPhoneController,
              title: '+20 1987654321',
              validateMsg: 'Phone is empty',
              prefix: SizedBox(
                width: 100,
                child: CountryCodePicker(
                  initialSelection: 'EG',
                  showCountryOnly: true,
                  showOnlyCountryWhenClosed: false,
                  favorite: const ['+20', 'EG'],
                  alignLeft: true,
                  flagWidth: 15,
                  padding: EdgeInsets.zero,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
