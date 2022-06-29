import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/controllers.dart';

class OnboardingImage extends GetView<OnboardingController> {
  final int index;
  const OnboardingImage(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: controller.getSize(context).width,
      child: Image.asset(
        controller.onboardingList[index].image,
        height: controller.getSize(context).height * 0.4,
      ),
    );
  }
}
