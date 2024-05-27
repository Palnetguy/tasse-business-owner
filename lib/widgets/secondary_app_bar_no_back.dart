// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:tesse_business_owner/constants/constants.dart';

class SecondaryAppBarNoBack extends StatelessWidget {
  final String title;
  final String storeName;
  const SecondaryAppBarNoBack({
    super.key,
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
