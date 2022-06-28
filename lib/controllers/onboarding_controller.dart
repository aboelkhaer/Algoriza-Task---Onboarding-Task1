import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_onboarding_auth/core/bindings/auth_bindings.dart';
import 'package:task1_onboarding_auth/views/auth/auth.dart';

import '../models/onboarding_model.dart';

class OnboardingController extends GetxController {
  RxInt selectedIndex = 0.obs;
  PageController pageController = PageController();
  bool get isLastPage => selectedIndex.value == onboardingList.length - 1;
  forwardPage() {
    if (isLastPage) {
      Get.to(() => const AuthScreen(),
          binding: AuthBindings(), transition: Transition.fadeIn);
    }
    if (!isLastPage) {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnboardingModel> onboardingList = <OnboardingModel>[
    OnboardingModel(
      logo: 'assets/images/logo.png',
      image: 'assets/images/onboarding1.jpg',
      title: 'Buy any food from your favorite restaurant',
      description:
          'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
    ),
    OnboardingModel(
      logo: 'assets/images/logo.png',
      image: 'assets/images/onboarding2.jpg',
      title: 'Get food delivery to your doorstep asap',
      description:
          'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
    ),
    OnboardingModel(
      logo: 'assets/images/logo.png',
      image: 'assets/images/onboarding3.jpg',
      title: '1914 translation by H. Rackham',
      description:
          ' In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do',
    ),
    OnboardingModel(
      logo: 'assets/images/logo.png',
      image: 'assets/images/onboarding2.jpg',
      title: 'Section 1.10.32 of "de Finibus Bonorum',
      description:
          'Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
    ),
  ];
  Size getSize(BuildContext context) => MediaQuery.of(context).size;
}
