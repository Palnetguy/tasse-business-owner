import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/forgot%20password/forgort_password_controller.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/reagister_header.dart';

import 'pop_up_for_changed_password.dart';

class ForgotPassEnterNewPassEmail extends StatelessWidget {
  const ForgotPassEnterNewPassEmail({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordController controller = Get.find();

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
                    'New Pasword?',
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
                    'Please enter your password',
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
                    lable: 'New Password',
                    isPasswordFeild: true,
                    onChanged: (value) {},
                  ),
                  InputField(
                    lable: 'Confirm Password',
                    isPasswordFeild: true,
                    onChanged: (value) {},
                  ),

                  // button
                  const SizedBox(height: 14),
                  ButtonNoIconWidget(
                    text: 'Change',
                    onclickFunction: () {
                      // when clicked this dialog shows up
                      Get.defaultDialog(
                        title: "",
                        titleStyle: const TextStyle(fontSize: 0),
                        titlePadding: const EdgeInsets.all(0),
                        contentPadding: const EdgeInsets.only(bottom: 0),
                        backgroundColor: Colors.transparent,
                        // this is the dialog in a nother file in forgort pass word folder
                        content: const PopUpForChangedPassword(),
                        barrierDismissible: false,
                      );
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
