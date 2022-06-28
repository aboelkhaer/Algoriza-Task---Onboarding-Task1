import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:task1_onboarding_auth/views/onboarding/onboarding.dart';
import 'core/bindings/bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
      title: 'Onboarding - Task 1',
      debugShowCheckedModeBanner: false,
      home: const Onboarding(),
      initialBinding: OnboardingBindings(),
    );
  }
}