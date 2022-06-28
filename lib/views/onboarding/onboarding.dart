import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_onboarding_auth/core/bindings/auth_bindings.dart';
import 'package:task1_onboarding_auth/views/auth/auth.dart';
import '../../controllers/controllers.dart';
import '../../core/utilities/scroll_effect.dart';
import '../widgets/custom_button.dart';
import 'screen_widgets/screen_widgets.dart';

class Onboarding extends GetView<OnboardingController> {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ScrollConfiguration(
            behavior: NoGlow(),
            child: PageView.builder(
              onPageChanged: controller.selectedIndex,
              itemCount: controller.onboardingList.length,
              controller: controller.pageController,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png', height: 50),
                    OnboardingImage(index),
                    OnboardingTitle(index),
                    OnboardingDescription(index),
                    SizedBox(height: controller.getSize(context).height * 0.1)
                  ],
                );
              },
            ),
          ),
          Obx(() =>
              (controller.isLastPage) ? Container() : const OnboardingSkip()),
          Positioned(
              bottom: controller.getSize(context).height * 0.19,
              left: 0,
              right: 0,
              child: const OnboardingDots()),
          Positioned(
            bottom: controller.getSize(context).height * 0.05,
            left: 0,
            right: 0,
            child: CustomButtom(
              onPressed: () {
                controller.isLastPage
                    ? Get.to(const AuthScreen(), binding: AuthBindings())
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
          ),
          Positioned(
            bottom: controller.getSize(context).height * 0.035,
            left: 0,
            right: 0,
            child: const OnboardingSignUp(),
          ),
        ],
      ),
    );
  }
}
