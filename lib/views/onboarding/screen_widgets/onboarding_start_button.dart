import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/controllers.dart';
import '../../../core/routes/app_pages.dart';

import '../../widgets/widgets.dart';

class OnboardingStartButtton extends GetView<OnboardingController> {
  const OnboardingStartButtton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16) +
          const EdgeInsets.only(bottom: 25),
      child: CustomButtom(
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
      ),
    );
  }
}
