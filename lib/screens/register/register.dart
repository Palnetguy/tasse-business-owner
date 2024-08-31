import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/register/login.dart';
import 'package:tesse_business_owner/screens/register/shop_registration.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/register_header.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // controller
    // BusinessOwnerRegisterController controller = Get.find();

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
                    'Register as a Business owner',
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
                    lable: 'Name',
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
                  InputField(
                    lable: 'Confirm Password',
                    isPasswordFeild: true,
                    onChanged: (value) {
                      // print(value);
                    },
                  ),

                  // button
                  const SizedBox(
                    height: 40.5,
                  ),
                  ButtonNoIconWidget(
                    text: 'Create Account',
                    onclickFunction: () {
                      Get.off(() => const ShopRegistration());
                    },
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already Have Acccount?',
                        style: TextStyle(
                          color: tasseTextBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const LoginScreen());
                        },
                        child: const Text(
                          'Log in',
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
