import 'package:flutter/material.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class SalesReportSO extends StatelessWidget {
  const SalesReportSO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Column(
        children: [
          // app bar
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Sales Report',
            storeName: '',
          ),
          // report
          Container(
            margin: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
            decoration: BoxDecoration(
              color: tassePrimaryWhite,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: tasseBlackColor.withOpacity(.11),
                ),
              ],
            ),
            child: Column(
              children: [
                // top
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100000),
                      child: const Image(
                        // colorBlendMode: BlendMode.difference,

                        width: 122,
                        image: AssetImage(
                          tasseLogoSvg,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -25),
                      child: const Column(
                        children: [
                          Text(
                            'SALES RECEIPT',
                            style: TextStyle(
                              color: tasseTextGray,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            '2024-05-02  16:32',
                            style: TextStyle(
                              color: tasseTabUnselectedColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // table and info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shop',
                              style: TextStyle(
                                color: tasseTabUnselectedColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'New Shop',
                              style: TextStyle(
                                color: tasseTextGray,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'NO:',
                              style: TextStyle(
                                color: tasseTabUnselectedColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'REC2179',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
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
                            SizedBox(height: 2),
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
                        const Column(
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
                            SizedBox(height: 2),
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
                    SizedBox(height: 20),
                    // // table
                    Table(
                      border: TableBorder.all(
                        color: tasseSelectLineColor,
                        width: 1,
                      ),
                      children: [
                        TableRow(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Recipt No',
                                style: TextStyle(
                                  color: tasseTabUnselectedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                // textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Count',
                                style: TextStyle(
                                  color: tasseTabUnselectedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Cashier',
                                style: TextStyle(
                                  color: tasseTabUnselectedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Total',
                                style: TextStyle(
                                  color: tasseTabUnselectedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                // textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'W3ER1356',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                // textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Khairul',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'UGX 2000',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                // textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'W3ER1356',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                // textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Khairul',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'UGX 2000',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                // textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            color: tasseTextGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'UGX 2000',
                          style: TextStyle(
                            color: tasseTextGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Tan Yor

                    Text(
                      'Thank you!',
                      style: TextStyle(
                        color: tasseTextGray,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                //
              ],
            ),
          )
        ],
      ),
    );
  }
}
