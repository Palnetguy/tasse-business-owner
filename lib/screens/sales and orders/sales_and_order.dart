import 'package:flutter/material.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class SalesAndOrder extends StatelessWidget {
  const SalesAndOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: true,
            title: 'Sales & Order',
            storeName: '',
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              children: [
                // calender
                Container(
                  height: 342,
                  color: tasseGray100Color.withOpacity(.5),
                  child: const Center(
                    child: Text('Calender here..'),
                  ),
                ),
                const SizedBox(height: 16),
                // list

                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: tasseBoaderGrayColor,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: tasseIconBgColorPurple,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: const Icon(
                              Icons.calendar_today_rounded,
                              color: tasseIconColorPurple,
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Today',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'View Today Sales',
                                style: TextStyle(
                                  color: tasseTabUnselectedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: tasseBoaderGrayColor,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: tasseIconBgColorPurple,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: const Icon(
                              Icons.calendar_month_rounded,
                              color: tasseIconColorPurple,
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Current Month',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Gross & Net Profits',
                                style: TextStyle(
                                  color: tasseTabUnselectedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: tasseBoaderGrayColor,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: tasseIconBgColorPurple,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: const Icon(
                              Icons.menu,
                              color: tasseIconColorPurple,
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Monthly Profit & Expense',
                                style: TextStyle(
                                  color: tasseTextGray,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Monthly profits versus expenses',
                                style: TextStyle(
                                  color: tasseTabUnselectedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 24),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: tasseBoaderGrayColor,
                  width: 1,
                ),
              ),
            ),
            child: ButtonNoIconWidget(
              text: 'Add Sales',
              margin: EdgeInsets.all(0),
            ),
          )
        ],
      ),
    );
  }
}
