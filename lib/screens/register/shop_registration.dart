import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/register/businesss_owner_shop_registration_controller.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/reagister_header.dart';

class ShopRegistration extends StatelessWidget {
  const ShopRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    // controller
    BusinessOwnerShopRegistrationController controller = Get.find();

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
                    'Create your own shop',
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
                    lable: 'Shop Name',
                    onChanged: (value) {
                      // print(value);
                    },
                    hintText: 'eg.electric shop',
                  ),
                  InputFieldWithDropDown(
                    lable: 'Shop Type',
                    onChanged: (value) {
                      // print(value);
                    },
                    hintText: 'eg.retail',
                  ),
                  InputFieldWithDropDown(
                    lable: 'Currency',
                    onChanged: (value) {
                      // print(value);
                    },
                    hintText: 'eg.UGX',
                  ),
                  InputField(
                    lable: 'Shop Address',
                    onChanged: (value) {
                      // print(value);
                    },
                  ),
                  InputField(
                    lable: 'Shop Details',
                    onChanged: (value) {
                      // print(value);
                    },
                    minlines: 5,
                  ),

                  // button
                  const SizedBox(
                    height: 40.5,
                  ),
                  const ButtonNoIconWidget(
                    text: 'Add',
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
