import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

var _dummy_recipt_data = {
  'Recipt_Id': 8923768,
  'customer': 'Akther Hossain',
  'date': '2024-05-02 16:32',
  'is_paid': false,
};

class ReceiptPos extends StatelessWidget {
  const ReceiptPos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // appbar
          SecondaryAppBar(
            isXIcon: false,
            title: 'RECEIPT#${_dummy_recipt_data['Recipt_Id']}',
            storeName: '',
          ),
          // rcipt
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              shrinkWrap: true,
              children: [
                // 1
                _dummy_recipt_data['is_paid'] != false
                    ? const SizedBox()
                    : const Row(
                        children: [
                          Expanded(
                            child: ButtonNoIconWidget(
                              text: 'Refund',
                              isFilled: false,
                              border_color: tassePrimaryRedLighterIcBg,
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: ButtonNoIconWidget(
                              text: 'Delivery Note',
                              isFilled: false,
                              border_color: tasseTabUnselectedColor,
                              text_color: tasseTextBlack,
                            ),
                          ),
                        ],
                      ),
                // 2
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Customer:',
                          style: TextStyle(
                            color: tasseTabUnselectedColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Akther Hossain',
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
                          'Date ',
                          style: TextStyle(
                            color: tasseTabUnselectedColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '2024-05-02 16:32',
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
                const SizedBox(height: 20),
                // 3
                _dummy_recipt_data['is_paid'] != false
                    ? const SizedBox()
                    : const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  color: tasseTabUnselectedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'UGX 250',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Paid',
                                style: TextStyle(
                                  color: tasseTabUnselectedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'UGX 0',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Balance',
                                style: TextStyle(
                                  color: tasseTabUnselectedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'UGX 250',
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
                const SizedBox(height: 20),
                // 4

                //

                _dummy_recipt_data['is_paid'] == false
                    ? const SizedBox()
                    : const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Date',
                                    style: TextStyle(
                                      color: tasseTabUnselectedColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '2024-05-02 16:32',
                                    style: TextStyle(
                                      color: tasseTextGray,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Served by',
                                    style: TextStyle(
                                      color: tasseTabUnselectedColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    'Khairul Islam',
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
                          SizedBox(height: 12)
                        ],
                      ),
                //
                _dummy_recipt_data['is_paid'] != false
                    ? const SizedBox()
                    : ButtonNoIconWidget(
                        text: 'Pay Now',
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
                            content: const _PopUpForPayNowCategory(),
                            barrierDismissible: false,
                          );
                        }),
                // 5
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: tasseSelectLineColor,
                        width: 1,
                      ),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Headphone',
                        style: TextStyle(
                          color: tasseTabUnselectedColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '1 @ugx 120',
                        style: TextStyle(
                          color: tasseTabUnselectedColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'UGX 120',
                        style: TextStyle(
                          color: tasseTabUnselectedColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                // 6
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: tasseSelectLineColor,
                        width: 1,
                      ),
                    ),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub Total:',
                            style: TextStyle(
                              color: tasseGray400Color,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'UGX 100',
                            style: TextStyle(
                              color: tasseTextGray,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Vat:',
                            style: TextStyle(
                              color: tasseGray400Color,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'UGX 120',
                            style: TextStyle(
                              color: tasseTextGray,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
                // 7
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Total:',
                          style: TextStyle(
                            color: tasseGray400Color,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 3),
                          decoration: BoxDecoration(
                            color: _dummy_recipt_data['is_paid'] != false
                                ? tasseSuccessGreenColor
                                : tassePrimaryRed,
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Text(
                            _dummy_recipt_data['is_paid'] != false
                                ? 'CASH SALE'
                                : 'Not Paid',
                            style: const TextStyle(
                              color: tassePrimaryWhite,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'UGX 120',
                      style: TextStyle(
                        color: tasseTextGray,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // 8
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: tassePrimaryRed,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.share,
                    color: tassePrimaryWhite,
                    size: 20,
                  ),
                ),
                SizedBox(width: 24),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: tassePrimaryRed,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.print,
                    color: tassePrimaryWhite,
                    size: 20,
                  ),
                ),
                SizedBox(width: 24),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: tassePrimaryRed,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.delete_rounded,
                    color: tassePrimaryWhite,
                    size: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _PopUpForPayNowCategory extends StatelessWidget {
  const _PopUpForPayNowCategory({super.key});

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
            "Pay invoice",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 24),

          DropDownInputField(
            options: const ['Cash', 'Mobile Money'],
            lable: 'Amount Received',
            initialIndex: 0,
          ),
          const SizedBox(height: 24),
          const InputField(
            lable: 'Enter Amount',
            hintText: 'eg. 10000',
          ),
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
