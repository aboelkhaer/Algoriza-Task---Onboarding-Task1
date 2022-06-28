import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_onboarding_auth/controllers/controllers.dart';

class OnboardingTitle extends GetView<OnboardingController> {
  final int index;
  const OnboardingTitle(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: controller.getSize(context).width * 0.7,
      child: Text(
        controller.onboardingList[index].title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
          height: 1.5,
        ),
      ),
    );
  }
}
