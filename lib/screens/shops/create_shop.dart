import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/shops/choose_shop_category.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class CreateShop extends StatelessWidget {
  const CreateShop({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> currenciesArrays = [
      'KES',
      'USD',
      'CAD',
      'UGX',
      'EUR',
      'AUD',
      'BDT',
      'BND',
      'BGN',
      'ALL',
      'BOB'
    ];

    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Create Shop',
            storeName: '',
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 24,
              left: 24,
              right: 24,
            ),
            child: ListView(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              children: [
                const InputField(
                  lable: 'Shop Name',
                  hintText: 'e.g.electric shop',
                ),
                InputField(
                  isReadOnly: true,
                  lable: 'Shop Type',
                  hintText: 'e.g.retail',
                  suffixIcon: IconButton(
                    onPressed: () {
                      // to select the type
                      // -------------
                      Get.to(() => const ChooseShopCategory());
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 14,
                      color: tasseTextBlack,
                    ),
                  ),
                ),
                DropDownInputField(
                  hintText: 'e.g.UGX',
                  options: currenciesArrays,
                  lable: 'Currency',
                ),
                const InputField(
                  lable: 'Shop Address',
                  minlines: 3,
                ),
                const InputField(
                  lable: 'Shop Details',
                  minlines: 5,
                ),
                const ButtonNoIconWidget(
                  text: 'Add',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
