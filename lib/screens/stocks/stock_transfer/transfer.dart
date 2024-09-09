import 'package:flutter/material.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SecondaryAppBar(
            isXIcon: false,
            title: 'Transfer',
            storeName: '',
          ),

          // list
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  //
                  // this is the Widget for each transfer
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: tasseInputPrimaryBgColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // 1
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Headphone',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: tasseTextGray,
                              ),
                            ),
                            Text(
                              'Available: 2',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: tasseGray400Color,
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            // 2
                            Column(
                              children: [
                                Text(
                                  'Available: 2',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: tasseGray400Color,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.add_circle_outline,
                                      size: 20,
                                      color: tasseTextGray,
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: tasseGray400Color,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Icon(
                                      Icons.remove_circle_outline,
                                      size: 20,
                                      color: tasseTextGray,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // 3
                            SizedBox(width: 24),
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: tasseIconBgColorRed,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.delete,
                                color: tassePrimaryRed,
                                size: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // bottom
          Container(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
            child: ButtonNoIconWidget(
              text: 'Complete',
              margin: EdgeInsets.all(0),
            ),
          )
        ],
      ),
    );
  }
}
