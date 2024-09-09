// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/register/login.dart';
import 'package:tesse_business_owner/screens/register/register.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.5),
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // beginning Image
              SizedBox(
                height: 254,
                width: 224,
                child: SvgPicture.asset(
                  tasseOnboardSvg,
                  height: 254,
                  width: 224,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // text
              const Text(
                textAlign: TextAlign.center,
                'Effortlessly manage your inventory on the go with our intuitive mobile app, anytime, anywhere.',
                style: TextStyle(
                  color: tasseTextGray,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              // buttons
              LongButtonWithIconSvg(
                iconPath: tasseUserSharingSvg,
                text: 'Create Account',
                onclickFunction: () {
                  Get.offAll(() => const RegisterScreen());
                },
              ),
              LongButtonWithIconSvg(
                iconPath: tasseUserMultipleSvg,
                text: 'Login Now',
                isFilled: false,
                onclickFunction: () {
                  Get.offAll(() => const LoginScreen());
                },
              ),

              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
