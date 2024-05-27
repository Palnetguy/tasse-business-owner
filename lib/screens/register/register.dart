import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/register/businesss_owner_register_controller.dart';
import 'package:tesse_business_owner/screens/register/login.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/reagister_header.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // controller
    BusinessOwnerRegisterController controller = Get.find();

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
                  const ButtonNoIconWidget(
                    text: 'Create Account',
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Create Account',
                        style: TextStyle(
                          color: tasseTextBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
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
                            fontWeight: FontWeight.w400,
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
