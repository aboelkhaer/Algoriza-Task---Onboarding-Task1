import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String validateMsg;
  final bool isSecure;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.title,
    required this.validateMsg,
    this.isSecure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        return value!.isNotEmpty ? null : validateMsg;
      },
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      obscureText: isSecure,
      decoration: InputDecoration(
        hintText: title,
        helperMaxLines: 1,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: const Color(0xFFF9F9F9),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
