import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar_with_prefix.dart';

// make list empty to see ate add itms
// restart aplication
var _selectedProduct = [
  {
    'name': 'Headphones',
  },
  {
    'name': 'EyerPhone',
  },
];

class CreateSaleSO extends StatelessWidget {
  const CreateSaleSO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // appbar
          SecondaryAppBarWithPrefix(
            isXIcon: true,
            title: 'Create Sales',
            storeName: '',
            prefix: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: tasseIconBgColorRed,
                  width: 1,
                ),
              ),
              child: const Text(
                'On-hold (00)',
                style: TextStyle(
                  color: tassePrimaryWhite,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 24,
              ),
              children: [
                // form
                Row(
                  children: [
                    Expanded(
                      child: DropDownInputField(
                          options: const [],
                          lable: 'Payment*',
                          hintText: 'Cash'),
                    ),
                    Expanded(
                      child: DropDownInputField(
                          options: const [],
                          lable: 'Sale Type*',
                          hintText: 'Retail'),
                    ),
                  ],
                ),
                const InputField(
                  lable: 'Select Customer*',
                  hintText: 'Akther Hossain',
                  suffixIcon: Icon(
                    Icons.search,
                    color: tasseArrowIconColor,
                    size: 16,
                  ),
                ),
                const ButtonNoIconWidget(text: 'Choose items to sell'),

                // add items

                _selectedProduct.length <= 0
                    ? Container(
                        // alignment: Alignment(0, 0),
                        height: 300,
                        // color: Colors.red,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_circle_outline_rounded,
                              size: 40,
                              color: tassePrimaryRed,
                            ),
                            Text(
                              'Add items',
                              style: TextStyle(
                                color: tassePrimaryRed,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      )
                    : SizedBox(),

                Column(
                  children: _selectedProduct
                      .map(
                        (e) => Container(
                          margin: EdgeInsets.only(bottom: 8),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: tasseInputPrimaryBgColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e['name'].toString(),
                                    style: TextStyle(
                                      color: tasseTextGray,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    '1 X UGX 200 = UGX 100 ',
                                    style: TextStyle(
                                      color: tasseGray400Color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              // count
                              Row(
                                children: [
                                  Icon(
                                    Icons.add_circle_outline_rounded,
                                    size: 20,
                                    color: tasseTextGray,
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      color: tasseTextGray,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.remove_circle_outline_rounded,
                                    size: 20,
                                    color: tasseTextGray,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
          // footer_bths
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: tasseSelectLineColor, width: 1),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            color: tasseGray400Color,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          'UGX 2000',
                          style: TextStyle(
                            color: tasseTextGray,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Items',
                          style: TextStyle(
                            color: tasseGray400Color,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          '10',
                          style: TextStyle(
                            color: tasseTextGray,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // btns
                Row(
                  children: [
                    Expanded(
                      child: ButtonNoIconWidget(
                        text: 'Cash in',
                        onclickFunction: () {
                          Get.defaultDialog(
                            title: "",

                            titleStyle: const TextStyle(fontSize: 0),
                            titlePadding: const EdgeInsets.all(0),
                            contentPadding: const EdgeInsets.all(0),
                            // middleText: 'Tests vsfs sfs sss ss ss s',
                            backgroundColor: Colors.transparent,
                            // buttonColor: Colors.red,
                            middleTextStyle: const TextStyle(fontSize: 0),
                            // this is the dialog in a nother file in forgort pass word folder
                            content: const _PopUpForCashInCategory(),
                            barrierDismissible: false,
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: ButtonNoIconWidget(
                        text: 'Hold',
                        isFilled: false,
                        text_color: tasseTextBlack,
                        border_color: tasseSelectLineColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _PopUpForCashInCategory extends StatelessWidget {
  const _PopUpForCashInCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 0),
      padding: const EdgeInsets.only(
        top: 20,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: tassePrimaryWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(height: 20),
          const Text(
            "Total Amount UGX 250",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 27),
          const InputField(
            lable: 'Amount Received',
            hintText: 'eg.UGX 1000',
          ),
          // const SizedBox(height: 7),
          Text(
            'Credit Total: UGX  -150',
            style: TextStyle(
              color: tasseTabUnselectedColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              ButtonFlexibleNoIconWidget(
                // width: double.infinity,
                isFilled: false,
                text: 'Cancel',
                onclickFunction: () {
                  Get.back();
                },
              ),
              const SizedBox(width: 10),
              ButtonFlexibleNoIconWidget(
                text: 'Confirm',
                onclickFunction: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
