import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/helper/init_get_x_dependecies.dart';
import 'package:tesse_business_owner/screens/layout/layout.dart';
import 'package:tesse_business_owner/screens/onboarding/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitGetXDependenicies(),
      title: 'Tasse Business Owner',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: tassePrimaryRed),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
