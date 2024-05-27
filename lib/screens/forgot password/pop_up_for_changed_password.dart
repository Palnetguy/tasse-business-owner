import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';

class PopUpForChangedPassword extends StatelessWidget {
  const PopUpForChangedPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          SvgPicture.asset(
            tassecongsSvg,
            width: 64,
            height: 64,
          ),
          const SizedBox(height: 20),
          const Text(
            "Cogratulations",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            textAlign: TextAlign.center,
            "You have successfully Changed your password",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          ButtonNoIconWidget(
            text: 'Done',
            onclickFunction: () {
              Get.back();
            },
          )
        ],
      ),
    );
  }
}
