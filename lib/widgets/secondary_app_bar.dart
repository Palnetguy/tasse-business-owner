// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';

class SecondaryAppBar extends StatelessWidget {
  final bool isXIcon;
  final String title;
  final String storeName;
  const SecondaryAppBar({
    super.key,
    required this.isXIcon,
    required this.title,
    required this.storeName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20, left: 24, bottom: 14, right: 24),
      color: tassePrimaryRed,
      child: SafeArea(
        child: Row(
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
                        border:
                            Border.all(width: 1.5, color: tassePrimaryWhite),
                      ),
                      child: const Icon(
                        Icons.close_rounded,
                        size: 12,
                        color: tassePrimaryWhite,
                      ),
                    )
                  : const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 24,
                      color: tassePrimaryWhite,
                    ),
            ),
            const SizedBox(width: 10),
            // text
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: tassePrimaryWhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(width: 5),
                storeName.isNotEmpty
                    ? Text(
                        "($storeName)",
                        style: const TextStyle(
                          color: tassePrimaryWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      )
                    : const SizedBox()
              ],
            )
          ],
        ),
      ),
    );
  }
}
