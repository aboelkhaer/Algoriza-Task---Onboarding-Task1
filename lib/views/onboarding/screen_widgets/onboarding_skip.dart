import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/controllers.dart';

class OnboardingSkip extends GetView<OnboardingController> {
  const OnboardingSkip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 30,
      top: 60,
      child: ElevatedButton(
        onPressed: () {
          controller.pageController
              .jumpToPage(controller.onboardingList.length - 1);
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade100,
          elevation: 0,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
        child: const Text(
          'Skip',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
