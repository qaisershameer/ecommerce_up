import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/theme/theme.dart';
import 'features/authentication/screens/onboarding/onboarding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}