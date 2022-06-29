import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_onboarding_auth/controllers/controllers.dart';
import 'package:task1_onboarding_auth/core/routes/app_pages.dart';

import '../../widgets/widgets.dart';

class OnboardingStartButtton extends GetView<OnboardingController> {
  const OnboardingStartButtton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButtom(
      onPressed: () {
        controller.isLastPage
            ? Get.toNamed(AppRoutes.authScreen)
            : controller.forwardPage();
      },
      child: Obx(
        () => Text(
          controller.isLastPage ? 'Get Started' : 'Next',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
