import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/forgot%20password/forgort_password_controller.dart';
import 'package:tesse_business_owner/screens/forgot%20password/forgot_pass_new_password_email.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/register_header.dart';

class ForgotPassVerifyEmail extends StatelessWidget {
  const ForgotPassVerifyEmail({super.key});

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
                    'Verify your email',
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
                    'Please, enter the verification code we sent to your email',
                    style: TextStyle(
                      color: tasseTextBlack,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  // form
                  // imputs
                  const SizedBox(height: 40),
                  PinCodeTextField(
                    cursorColor: tasseSuccessGreenColor,
                    keyboardType: TextInputType.number,
                    textStyle: const TextStyle(
                      color: tasseSuccessGreenColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                    appContext: context,
                    length: 4,
                    pinTheme: PinTheme(
                      activeBorderWidth: 1,
                      inactiveBorderWidth: 1,
                      borderWidth: 1,
                      activeColor: tasseSuccessBgGreenColor,
                      inactiveColor: tasseSuccessBgGreenColor,
                      activeFillColor: tasseSuccessBgGreenColor,
                      inactiveFillColor: tasseSuccessBgGreenColor,
                      selectedFillColor: tasseSuccessBgGreenColor,
                      // borderWidth: 0,
                      selectedColor: tasseSuccessBgGreenColor,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 50,
                    ),
                    enableActiveFill: true,
                  ),
                  // button
                  const SizedBox(height: 14),
                  ButtonNoIconWidget(
                    text: 'Verify',
                    onclickFunction: () {
                      Get.to(() => const ForgotPassEnterNewPassEmail());
                    },
                  ),
                  //
                  const SizedBox(height: 15),
                  // word and time
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // time
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_rounded,
                            color: tasseTextGray,
                            size: 16,
                          ),
                          Text(
                            ' 02:00',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseTextGray,
                            ),
                          ),
                        ],
                      ),
                      // resend
                      Row(
                        children: [
                          Text(
                            "Didn't get code? ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseTextGray,
                            ),
                          ),
                          Text(
                            'Resend',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tassePrimaryRed,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
