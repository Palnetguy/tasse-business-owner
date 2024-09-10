// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/expenses/expenses_controller.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Bad Stock',
            storeName: 'Electric shop',
          ),

          // semi nav
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 16, bottom: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _SemiNavTab(isSelected: true, text: 'Today'),
                  _SemiNavTab(isSelected: false, text: 'Yesterday'),
                  _SemiNavTab(isSelected: false, text: 'This Week'),
                  _SemiNavTab(isSelected: false, text: 'This Month'),
                  _SemiNavTab(isSelected: false, text: 'This Year'),
                ],
              ),
            ),
          ),

          // total
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 16),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: tasseTodaySalesGgColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: tasseTextGray,
                    ),
                  ),
                  Text(
                    'UGX 200',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: tasseTextGray,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // list
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  const _ExpenseTabModule(
                    date: 'May 2, 2024',
                    time: '10:32:27 AM',
                    money: 'UGX 2000',
                    name: 'Khairul',
                    expenseTitle: 'Employee salary',
                    usedOn: 'Salary',
                  ),
                  const _ExpenseTabModule(
                    date: 'May 2, 2024',
                    time: '10:32:27 AM',
                    money: 'UGX 2000',
                    name: 'Khairul',
                    expenseTitle: 'Shp rent',
                    usedOn: 'Rent',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 16),
            child: ButtonNoIconWidget(
              text: 'Add New',
            ),
          ),
        ],
      ),
    );
  }
}

class _PopUpForConfirmDelete extends StatelessWidget {
  const _PopUpForConfirmDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 0),
      padding: const EdgeInsets.only(
        top: 20,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: tassePrimaryWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(height: 20),
          const Text(
            "Confirm Delete",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "Go you want to delete this item",
            style: TextStyle(
              color: tasseGray400Color,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              ButtonFlexibleNoIconWidget(
                // width: double.infinity,
                isFilled: false,
                text: 'Cancel',
                onclickFunction: () {
                  Get.back();
                },
              ),
              const SizedBox(width: 10),
              ButtonFlexibleNoIconWidget(
                text: 'Delete',
                onclickFunction: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _ExpenseTabModule extends StatelessWidget {
  final String date;
  final String time;
  final String money;
  final String name;

  final String usedOn;
  final String expenseTitle;

  const _ExpenseTabModule({
    required this.date,
    required this.time,
    required this.money,
    required this.name,
    required this.usedOn,
    required this.expenseTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.bottomSheet(
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 25,
                ),
                decoration: BoxDecoration(
                  color: tassePrimaryWhite,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    // top
                    Container(
                      padding: EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: tasseBoaderGrayColor,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Manage',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseBlackColor,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Transform.rotate(
                              angle: pi * (90 / 360),
                              child: Icon(
                                size: 16.67,
                                Icons.add_circle_outline_rounded,
                                color: tasseTextGray,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    // list
                    Container(
                      margin: EdgeInsets.only(bottom: 24),
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit,
                            color: tasseGray400Color,
                          ),
                          SizedBox(width: 16),
                          Text(
                            'Edit',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tasseTextGray,
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                        Get.defaultDialog(
                          title: "",
                          titleStyle: const TextStyle(fontSize: 0),
                          titlePadding: const EdgeInsets.all(0),
                          contentPadding: const EdgeInsets.all(0),
                          // middleText: 'Tests vsfs sfs sss ss ss s',
                          backgroundColor: Colors.transparent,
                          // buttonColor: Colors.red,
                          middleTextStyle: const TextStyle(fontSize: 0),
                          // this is the dialog in a nother file in forgort pass word folder
                          content: const _PopUpForConfirmDelete(),
                          barrierDismissible: false,
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 24),
                        child: Row(
                          children: [
                            Icon(
                              Icons.delete,
                              color: tasseGray400Color,
                            ),
                            SizedBox(width: 16),
                            Text(
                              'Delete',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: tasseTextGray,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: tasseBoaderGrayColor,
            width: 1.5,
          ),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    text: expenseTitle,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: tasseTextBlack,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: tassePrimaryRed,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Text(
                    usedOn,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: tassePrimaryRed,
                    ),
                  ),
                )
              ],
            ),
            //more
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month_outlined,
                          size: 16,
                          color: tasseGray400Color,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          date,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: tasseGray400Color,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.alarm,
                          size: 16,
                          color: tasseGray400Color,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          time,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: tasseGray400Color,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          money,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: tasseTextBlack,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.account_circle_outlined,
                          size: 16,
                          color: tasseGray400Color,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: tasseGray400Color,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // const SizedBox(height: 10),
            // Container(
            //   padding: const EdgeInsets.all(8),
            //   decoration: BoxDecoration(
            //     color: tasseBoaderGrayColor,
            //     borderRadius: BorderRadius.circular(4),
            //   ),
            //   child: Text(
            //     info,
            //     style: const TextStyle(
            //       color: tasseTextGray,
            //       fontSize: 12,
            //       fontWeight: FontWeight.w400,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class _SemiNavTab extends StatelessWidget {
  final bool isSelected;
  final String text;
  const _SemiNavTab({
    required this.isSelected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: isSelected ? tassePrimaryRed : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected ? Colors.transparent : tasseSelectLineColor,
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? tassePrimaryWhite : tasseTextBlack,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
