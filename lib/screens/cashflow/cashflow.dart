import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/cashflow/cashin.dart';
import 'package:tesse_business_owner/screens/cashflow/cashout.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class CashFlow extends StatelessWidget {
  const CashFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // app bar
          SecondaryAppBar(
            isXIcon: true,
            title: 'Cashflow',
            storeName: 'Electric Shop',
          ),
          // ....
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              children: [
                Text(
                  'Cash in Hand as on 2024-05-14',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: tasseGray400Color,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  '3000',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: tasseTextGray,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ButtonNoIconWidget(
                        text: 'Add Cash In',
                        border_color: tasseIconBgColorRed,
                        text_color: tassePrimaryRed,
                        isFilled: false,
                        onclickFunction: () {
                          Get.to(CashIn());
                        },
                      ),
                    ),
                    SizedBox(width: 18),
                    Expanded(
                      child: ButtonNoIconWidget(
                        text: 'Add Cash In',
                        border_color: tasseIconBgColorRed,
                        text_color: tassePrimaryRed,
                        isFilled: false,
                        onclickFunction: () {
                          Get.to(CashOut());
                        },
                      ),
                    ),
                  ],
                ),
                // table
                Table(
                  children: [
                    TableRow(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Date',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: tasseTextGray,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Name',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: tasseTextGray,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'In',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: tasseTextGray,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Out',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: tasseTextGray,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: tasseBoaderGrayColor,
                            width: 1,
                          ),
                        ),
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'May',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Sale',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            '100',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            '0',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: tasseBoaderGrayColor,
                            width: 1,
                          ),
                        ),
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'May',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Sale',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            '100',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            '0',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: tasseBoaderGrayColor,
                            width: 1,
                          ),
                        ),
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'May',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Sale',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            '0',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            '300',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tassePrimaryRed,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: tasseBoaderGrayColor,
                            width: 1,
                          ),
                        ),
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'May',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Sale',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            '100',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            '0',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: tasseBoaderGrayColor,
                            width: 1,
                          ),
                        ),
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'May',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Sale',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            '100',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseGray400Color,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            '300',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tassePrimaryRed,
                            ),
                          ),
                        ),
                      ],
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
