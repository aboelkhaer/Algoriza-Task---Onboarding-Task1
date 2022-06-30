import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_text_form.dart';
import '../../../controllers/auth_controller.dart';

class AuthForm extends GetView<AuthController> {
  const AuthForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        children: [
          Obx(
            () => SizedBox(
              child: controller.isSignIn.value
                  ? Container()
                  : Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: const [
                              Text('Email', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                        CustomTextFormField(
                          controller: controller.userEmailController,
                          title: 'Ex@example.com',
                          validateMsg: 'Email is empty',
                          textInputType: TextInputType.emailAddress,
                        ),
                      ],
                    ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: const [
                Text('Phone Number', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: CustomTextFormField(
              controller: controller.userPhoneController,
              title: '+20 1987654321',
              validateMsg: 'Phone is empty',
              textInputType: TextInputType.phone,
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
          Obx(
            () => SizedBox(
              child: controller.isSignIn.value
                  ? Container()
                  : Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: const [
                              Text('Password', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                        CustomTextFormField(
                          controller: controller.userPasswordController,
                          title: 'Password',
                          validateMsg: 'Password is empty',
                          textInputType: TextInputType.text,
                          isSecure: true,
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
