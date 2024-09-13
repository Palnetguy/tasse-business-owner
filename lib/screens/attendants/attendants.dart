// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/attendants/add_attendants_profile.dart';
import 'package:tesse_business_owner/screens/attendants/attendants_profile.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar_no_back.dart';

class Attendants extends StatelessWidget {
  const Attendants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SecondaryAppBarNoBack(
          title: 'Attendants',
          storeName: '2',
        ),
        ListView.builder(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return AttendantCard(
              name: 'Ian Rush',
              idNumber: "0089",
              onTap: () {
                Get.to(AttendantProfile());
              },
            );
          },
        ),
        const Expanded(child: SizedBox()),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: LongButtonWithIconSvg(
            text: 'Add Attendant',
            iconPath: tasseAddCircleSvg,
            onclickFunction: () {
              Get.to(AddAttendantProfile());
            },
          ),
        ),
        const SizedBox(height: 100)
      ],
    );
  }
}

class AttendantCard extends StatelessWidget {
  final String name;
  final String idNumber;
  final Function()? onTap;
  const AttendantCard({
    super.key,
    required this.name,
    required this.idNumber,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: tasseSelectLineColor,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: tasseIconBgColorRed,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 16,
                        color: tassePrimaryRed,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      name,
                      style: const TextStyle(
                        color: tasseTextBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text('ID-$idNumber'),
              ],
            ),
            GestureDetector(
              onTap: onTap,
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
                color: tasseTextBlack,
              ),
            )
          ],
        ),
      ),
    );
  }
}
