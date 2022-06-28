import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_onboarding_auth/controllers/controllers.dart';

class OnboardingDescription extends GetView<OnboardingController> {
  final int index;
  const OnboardingDescription(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: controller.getSize(context).width * 0.8,
      child: Text(
        controller.onboardingList[index].description,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 12, letterSpacing: 1.5, height: 1.5, color: Colors.grey),
      ),
    );
  }
}
