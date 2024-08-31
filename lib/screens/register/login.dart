import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/forgot%20password/forgot_pass_enter_email.dart';
import 'package:tesse_business_owner/screens/home/home_screen.dart';
import 'package:tesse_business_owner/screens/register/register.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/register_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // controller
    // BusinessOwnerLogInController controller = Get.find();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RegisterHeader(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40.5),
              child: ListView(
                shrinkWrap: true,
                children: [
                  const Text(
                    'Sign in as a Business owner',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: tasseTextBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InputField(
                    lable: 'Email',
                    onChanged: (value) {
                      // print(value);
                    },
                  ),
                  InputField(
                    lable: 'Password',
                    isPasswordFeild: true,
                    onChanged: (value) {
                      // print(value);
                    },
                  ),

                  // forgot password text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const ForgotPassEnterEmail());
                        },
                        child: const Text(
                          'Forgot Password',
                          // textAlign: TextAlign.end,
                          style: TextStyle(
                            color: tassePrimaryRed,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // button
                  const SizedBox(
                    height: 40.5,
                  ),
                  ButtonNoIconWidget(
                    text: 'Sign In',
                    onclickFunction: () {
                      Get.offAll(() => const HomeScreen());
                    },
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have an account?',
                        style: TextStyle(
                          color: tasseTextBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const RegisterScreen());
                        },
                        child: const Text(
                          ' Create',
                          style: TextStyle(
                            color: tassePrimaryRed,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.5 * 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
