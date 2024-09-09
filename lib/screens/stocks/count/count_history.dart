import 'package:flutter/material.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar_with_prefix.dart';

class CountHistory extends StatelessWidget {
  const CountHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBarWithPrefix(
            isXIcon: false,
            title: 'Cash Purchases',
            storeName: '',
            prefix: Icon(
              Icons.print,
              color: tassePrimaryRed,
              size: 24,
            ),
            noBg: true,
          ),

          // semi nav
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 16, bottom: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _SemiNavTab(isSelected: true, text: 'Today'),
                  _SemiNavTab(isSelected: false, text: 'Yesterday'),
                  _SemiNavTab(isSelected: false, text: 'This Week'),
                  _SemiNavTab(isSelected: false, text: 'This Month'),
                  _SemiNavTab(isSelected: false, text: 'This Year'),
                ],
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: tasseBoaderGrayColor,
                width: 1,
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: tasseSelectLineColor,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Headphone',
                            style: TextStyle(
                              color: tasseTextBlack,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'May 09,2024, 11:53 PM',
                            style: TextStyle(
                              color: tasseTabUnselectedColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 12),
                        decoration: BoxDecoration(
                          color: tasseBoaderGrayColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'System Count:',
                                  style: TextStyle(
                                    color: tasseTabUnselectedColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '10',
                                  style: TextStyle(
                                    color: tasseTextBlack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Physcical Count:',
                                  style: TextStyle(
                                    color: tasseTabUnselectedColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '10',
                                  style: TextStyle(
                                    color: tasseTextBlack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: tasseSelectLineColor,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Headphone',
                            style: TextStyle(
                              color: tasseTextBlack,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'May 09,2024, 11:53 PM',
                            style: TextStyle(
                              color: tasseTabUnselectedColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 12),
                        decoration: BoxDecoration(
                          color: tasseBoaderGrayColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'System Count:',
                                  style: TextStyle(
                                    color: tasseTabUnselectedColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '10',
                                  style: TextStyle(
                                    color: tasseTextBlack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Physcical Count:',
                                  style: TextStyle(
                                    color: tasseTabUnselectedColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '10',
                                  style: TextStyle(
                                    color: tasseTextBlack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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

class _SemiNavTab extends StatelessWidget {
  final bool isSelected;
  final String text;
  const _SemiNavTab({
    required this.isSelected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: isSelected ? tassePrimaryRed : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected ? Colors.transparent : tasseSelectLineColor,
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? tassePrimaryWhite : tasseTextBlack,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
