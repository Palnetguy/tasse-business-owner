import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/forgot%20password/forgot_pass_verify_email.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/register_header.dart';

class ForgotPassEnterEmail extends StatelessWidget {
  const ForgotPassEnterEmail({super.key});

  @override
  Widget build(BuildContext context) {
    // ForgotPasswordController controller = Get.find();

    return Scaffold(
      body: Column(
        children: [
          const RegisterHeader(),
          // info text
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40.5),
              child: ListView(
                shrinkWrap: true,
                children: [
                  const Text(
                    'Forgot Pasword?',
                    style: TextStyle(
                      color: tasseTextBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    textAlign: TextAlign.center,
                    'Enter your email address to get six digit code',
                    style: TextStyle(
                      color: tasseTextBlack,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  // form
                  // imputs
                  const SizedBox(height: 30),
                  InputField(
                    lable: 'Email',
                    onChanged: (value) {},
                  ),

                  // button
                  const SizedBox(height: 14),
                  ButtonNoIconWidget(
                    text: 'Send',
                    onclickFunction: () {
                      Get.to(() => const ForgotPassVerifyEmail());
                    },
                  ),
                  //
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
