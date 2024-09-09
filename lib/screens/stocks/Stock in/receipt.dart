import 'package:flutter/material.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar_with_prefix.dart';

class Recipt extends StatelessWidget {
  const Recipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SecondaryAppBarWithPrefix(
            isXIcon: false,
            title: 'RECEIPT#REC2179',
            storeName: '',
            prefix: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                      color: tasseBoaderGrayColor, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.picture_as_pdf_outlined,
                    color: tassePrimaryRed,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                      color: tasseBoaderGrayColor, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.delete,
                    color: tassePrimaryRed,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),

          // res info
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(
                color: tasseBoaderGrayColor,
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // top
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product Name',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: tasseTabUnselectedColor,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Headphone',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: tasseTextGray,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                      decoration: BoxDecoration(
                        color: tasseSuccessGreenColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Text(
                        'CASH',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: tassePrimaryWhite,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                // date and by
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: tasseTabUnselectedColor,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '2024-05-02 16:32',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: tasseTextGray,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Invoiced By',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: tasseTabUnselectedColor,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Khairul Islam',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: tasseTextGray,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // deposite
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: tasseBoaderGrayColor,
                        width: 1,
                      ),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Invoiced By',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: tasseTabUnselectedColor,
                        ),
                      ),
                      Text(
                        'Khairul Islam',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: tasseTextGray,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                // total
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tasseTextGray,
                      ),
                    ),
                    Text(
                      'USD 2000',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tasseTextGray,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
