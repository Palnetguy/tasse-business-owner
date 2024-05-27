// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class CustomTabControllerWithAppBar extends StatelessWidget {
  final int length;

  final bool isXIcon;
  final String title;
  final String storeName;

  final List<Tab> tabs;
  final TabBarView tabBarView;

  const CustomTabControllerWithAppBar({
    super.key,
    required this.length,
    required this.isXIcon,
    required this.title,
    required this.storeName,
    required this.tabs,
    required this.tabBarView,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: length, // Number of tabs
      child: Scaffold(
        body: Column(
          children: [
            SecondaryAppBar(
              isXIcon: isXIcon,
              title: title,
              storeName: storeName,
            ),

            //
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: tassePrimaryRed,
              indicatorWeight: 1.5,
              // unselectedLabelColor: tasseTextGray,
              unselectedLabelStyle: const TextStyle(
                color: tasseTabUnselectedColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              labelStyle: const TextStyle(
                color: tassePrimaryRed,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              tabs: tabs,
            ),
            Expanded(
              child: tabBarView,
            ),
          ],
        ),
      ),
    );
  }
}
