// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // appbar
          const SecondaryAppBar(
            isXIcon: true,
            title: 'Subscription',
            storeName: '',
          ),
          // body
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 15,
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: tasseSelectLineColor,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    'Faclities you will get after getting subscription',
                    style: TextStyle(
                      color: tasseTextBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: tasseIconBgColorRed,
                    ),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle_outline_rounded,
                              color: tassePrimaryRed,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Access all features',
                              style: TextStyle(
                                color: tassePrimaryRed,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle_outline_rounded,
                              color: tassePrimaryRed,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Instant VIP support',
                              style: TextStyle(
                                color: tassePrimaryRed,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle_outline_rounded,
                              color: tassePrimaryRed,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Add free journey',
                              style: TextStyle(
                                color: tassePrimaryRed,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Select your plan',
                    style: TextStyle(
                      color: tasseTextBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // plans
                  const PlanTab(),
                  const SizedBox(height: 16),
                  const PlanTab(isSelected: true),
                  const SizedBox(height: 24),
                  ButtonNoIconWidget(
                    text: 'Upgrade Now',
                    onclickFunction: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlanTab extends StatelessWidget {
  final bool? isSelected;

  const PlanTab({
    super.key,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isSelected! ? tasseSuccessBgGreenColor : Colors.transparent,
        border: Border.all(
          color: isSelected! ? tasseSuccessGreenColor : tasseSelectLineColor,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // duration
              Text(
                'Monthly',
                style: TextStyle(
                  color: tasseTabUnselectedColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              // money
              SizedBox(height: 16),
              Text(
                'UGX 10000',
                style: TextStyle(
                  color: tasseTextBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          // circle
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              border: Border.all(
                color: isSelected!
                    ? tasseSuccessGreenColor
                    : tasseTabUnselectedColor,
                width: isSelected! ? 8 : 1.5,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          )
        ],
      ),
    );
  }
}
