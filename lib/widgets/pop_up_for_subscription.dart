// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/subscription/subscription.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';

class PopUpForSubscription extends StatelessWidget {
  const PopUpForSubscription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(1, -1),
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: tassePrimaryWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.only(
            top: 20,
            left: 16,
            right: 16,
          ),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // prime
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tassePriYellow,
                ),
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  'assets/svgs/crown.svg',
                  width: 20,
                  height: 20,
                  color: tassePrimaryRed,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Your monthly plan has expired",
                style: TextStyle(
                  color: tasseTextBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                textAlign: TextAlign.center,
                "Please buy your pack to access to the features",
                style: TextStyle(
                  color: tasseTextBlack,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              ButtonNoIconWidget(
                text: 'Buy Now',
                onclickFunction: () {
                  Get.to(() => const Subscription());
                },
              )
            ],
          ),
        ),
        // close icon
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  offset: Offset(7, 5),
                  blurRadius: 30,
                  color: tasseBlackColor,
                )
              ],
              borderRadius: BorderRadius.circular(100),
              color: tassePrimaryWhite,
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1.5, color: tasseTextBlack),
              ),
              child: const Icon(
                Icons.close_rounded,
                size: 12,
                color: tasseTextBlack,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
