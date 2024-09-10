// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/Supplier/suppliers.dart';
import 'package:tesse_business_owner/screens/notifications/notifications.dart';
import 'package:tesse_business_owner/widgets/main_header.dart';
import 'package:tesse_business_owner/widgets/pop_up_for_subscription.dart';

import '../../widgets/select_shop_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // HomeController controller = Get.find();

    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        // header
        SizedBox(
          height: 256 + (97 / 2) + 15 + 97,
          child: Stack(
            alignment: const Alignment(0, -1),
            children: [
              const SizedBox(
                height: 256,
                child: MainHeaderWidget(),
              ),
              // info
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                height: 256 - 24 - (97 / 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // --
                    SafeArea(
                      child: Container(
                        margin: const EdgeInsets.only(top: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // name
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: tassePrimaryWhite,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Khairul Islam',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: tassePrimaryWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            // button
                            // notifications
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => const Notifications());
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: tassePrimaryRedLighterIcBg,
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: const Icon(
                                      Icons.notifications_active,
                                      color: tassePrimaryWhite,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                // prime
                                GestureDetector(
                                  onTap: () {
                                    // when clicked this dialog shows up
                                    Get.defaultDialog(
                                      title: "",
                                      titleStyle: const TextStyle(fontSize: 0),
                                      titlePadding: const EdgeInsets.all(0),
                                      contentPadding:
                                          const EdgeInsets.only(bottom: 0),
                                      backgroundColor: Colors.transparent,
                                      // this is the dialog in a nother file in forgort pass word folder
                                      content: const PopUpForSubscription(),
                                      barrierDismissible: false,
                                    );
                                  },
                                  child: Container(
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
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // --
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: tassePrimaryRedLighter,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // name
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Electric store',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: tassePrimaryWhite,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Current Shop',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: tassePrimaryWhite,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              // dot
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 8,
                                  left: 5,
                                ),
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: tasseDotGreen,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ],
                          ),
                          // button Switch Shop
                          GestureDetector(
                            onTap: () {
                              // Bottom Sheet
                              Get.bottomSheet(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                backgroundColor: tassePrimaryWhite,
                                enableDrag: true,
                                const SelectShopContent(),
                              );
                              // end bottom sheet
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 9,
                                horizontal: 12,
                              ),
                              decoration: BoxDecoration(
                                color: tassePrimaryWhite,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Text(
                                'Switch Shop',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: tassePrimaryRed,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // top tabs

              const Positioned(
                // alignment: Alignment(0, 1),
                bottom: 0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        EachTopTabModule(
                          title: 'Today Sales',
                          svgUrl: todaySales,
                          svgcolor: tasseTodaySalesIconColor,
                          bgcolor: tasseTodaySalesGgColor,
                          money: 'UGX 1000',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        EachTopTabModule(
                          title: 'Today Profits',
                          svgUrl: todayProfits,
                          svgcolor: tasseTodayProfitIconColor,
                          bgcolor: tasseTodayProfitGgColor,
                          money: 'UGX 1000',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        EachTopTabModule(
                          title: 'Today Due',
                          svgUrl: todayDue,
                          svgcolor: tasseTodayDueIconColor,
                          bgcolor: tasseTodayDueGgColor,
                          money: 'UGX 1000',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        EachTopTabModule(
                          title: 'Today today',
                          svgUrl: todayExpenses,
                          svgcolor: tasseTodayExpensesIconColor,
                          bgcolor: tasseTodayExpensesGgColor,
                          money: 'UGX 1000',
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        // body

        const SizedBox(height: 35),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BodyTab(
                    title: 'Stock',
                    svgUrl: tasseStokeSvg,
                    svgColorUrl: tasseIconColorLightBlue,
                    svgBgColorUrl: tasseIconBgColorLightBlue,
                  ),
                  BodyTab(
                    title: 'Sales & Order',
                    svgUrl: tasseSalesOrderSvg,
                    svgColorUrl: tasseIconColorPurple,
                    svgBgColorUrl: tasseIconBgColorPurple,
                  ),
                  BodyTab(
                    title: 'Pos',
                    svgUrl: tassePosSvg,
                    svgColorUrl: tasseIconColorGreen,
                    svgBgColorUrl: tasseIconBgColorGreen,
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const BodyTab(
                    title: 'Expense',
                    svgUrl: tasseExpenseSvg,
                    svgColorUrl: tasseIconColorRed,
                    svgBgColorUrl: tasseIconBgColorRed,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const Suppliers());
                    },
                    child: const BodyTab(
                      title: 'Suppliers',
                      svgUrl: tasseSuppliersSvg,
                      svgColorUrl: tasseIconColorGreenDarker,
                      svgBgColorUrl: tasseIconBgColorGreenDarker,
                    ),
                  ),
                  const BodyTab(
                    title: 'Customers',
                    svgUrl: tasseExpenseSvg,
                    svgColorUrl: tasseIconColorDarkerBlue,
                    svgBgColorUrl: tasseIconBgColorDarkerBlue,
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BodyTab(
                    title: 'Report',
                    svgUrl: tasseReportSvg,
                    svgColorUrl: tasseIconColorOrange,
                    svgBgColorUrl: tasseIconBgColorOrange,
                  ),
                  BodyTab(
                    title: 'Cashflow',
                    svgUrl: tasseCashFlowSvg,
                    svgColorUrl: tasseIconColorYellow,
                    svgBgColorUrl: tasseIconBgColorYellow,
                  ),
                  SizedBox(),
                  // Expanded(flex: 2, child: SizedBox())
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 25, right: 25, top: 40),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: tasseTodayProfitGgColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    tasseUserSharingSvg,
                    width: 20,
                    height: 20,
                    color: tasseTodayProfitIconColor,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Profit & Expenses Summary',
                    style: TextStyle(
                      color: tasseTextBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
                color: tasseArrowIconColor,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class BodyTab extends StatelessWidget {
  final String title;
  final String svgUrl;

  final Color svgColorUrl;
  final Color svgBgColorUrl;

  const BodyTab({
    super.key,
    required this.title,
    required this.svgUrl,
    required this.svgColorUrl,
    required this.svgBgColorUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 61,
      // color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 36,
            height: 36,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: svgBgColorUrl,
            ),
            child: SvgPicture.asset(
              svgUrl,
              color: svgColorUrl,
              height: 20,
              width: 20,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: tasseTextBlack,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}

class EachTopTabModule extends StatelessWidget {
  final String title;
  final String money;
  final String svgUrl;
  final Color svgcolor;
  final Color bgcolor;

  const EachTopTabModule({
    super.key,
    required this.title,
    required this.money,
    required this.svgUrl,
    required this.svgcolor,
    required this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97,
      width: 163,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tassePrimaryWhite,
                ),
                child: SvgPicture.asset(
                  svgUrl,
                  color: svgcolor,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                money,
                style: const TextStyle(
                  color: tasseTextBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          // text
          // const SizedBox(height: 20),
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: tasseTextBlack,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
