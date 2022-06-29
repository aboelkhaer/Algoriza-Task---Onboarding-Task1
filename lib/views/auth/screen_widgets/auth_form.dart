import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/auth_controller.dart';

class AuthForm extends GetView<AuthController> {
  const AuthForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
              color: const Color(0xFF5ABD8C),
            )),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
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
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    controller: controller.userPhoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: '+20 1987654321',
                      border: InputBorder.none,
                    ),
                    validator: (val) =>
                        controller.validateText(val!, 'Phone is empty'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
