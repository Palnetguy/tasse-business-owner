// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';

class SecondaryAppBarWithPrefix extends StatelessWidget {
  final bool isXIcon;
  final String title;
  final String storeName;
  final Widget prefix;
  final bool? noBg;
  const SecondaryAppBarWithPrefix({
    super.key,
    // this.prefix,
    required this.isXIcon,
    required this.title,
    required this.storeName,
    required this.prefix,
    this.noBg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20, left: 24, bottom: 14, right: 24),
      // color:
      // noBg == null || noBg == false ? Colors.transparent : tassePrimaryRed,
      decoration: BoxDecoration(
        color: noBg == null || noBg == false
            ? tassePrimaryRed
            : Colors.transparent,
        border: Border(
          bottom: BorderSide(
            color: tasseBoaderGrayColor,
            width: 1,
          ),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: isXIcon
                      ? Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 1.5,
                              color: noBg == null || noBg == false
                                  ? tassePrimaryWhite
                                  : tasseBlackColor,
                            ),
                          ),
                          child: Icon(
                            Icons.close_rounded,
                            size: 12,
                            color: noBg == null || noBg == false
                                ? tassePrimaryWhite
                                : tasseBlackColor,
                          ),
                        )
                      : Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 24,
                          color: noBg == null || noBg == false
                              ? tassePrimaryWhite
                              : tasseBlackColor,
                        ),
                ),
                const SizedBox(width: 10),
                // text
                Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: noBg == null || noBg == false
                            ? tassePrimaryWhite
                            : tasseBlackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 5),
                    storeName.isNotEmpty
                        ? Text(
                            "($storeName)",
                            style: TextStyle(
                              color: noBg == null || noBg == false
                                  ? tassePrimaryWhite
                                  : tasseBlackColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          )
                        : const SizedBox()
                  ],
                )
              ],
            ),
            prefix
          ],
        ),
      ),
    );
  }
}
