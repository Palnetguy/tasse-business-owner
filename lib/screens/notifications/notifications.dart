import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/notifications/notifications_controller.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    NotificationsController controller = Get.find();

    return Scaffold(
      body: Column(
        children: [
          // app bar
          const SecondaryAppBar(
            isXIcon: true,
            title: 'Notifications',
            storeName: 'Electric Shop',
          ),
          // body
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 15,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return const NotificationTab();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationTab extends StatelessWidget {
  const NotificationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: tasseSelectLineColor,
          width: 1.5,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 11,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You Have successfully changed your password',
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '20 May 2024',
                style: TextStyle(
                  color: tasseTabUnselectedColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '10:00 Am',
                style: TextStyle(
                  color: tasseTabUnselectedColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
