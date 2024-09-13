// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/stocks/bad%20stock/add_bad_stock.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class BadStock extends StatelessWidget {
  const BadStock({super.key});

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
                  const _ProductTabModule(
                    date: 'May 2, 2024',
                    time: '10:32:27 AM',
                    money: 'UGX 2000',
                    name: 'Khairul',
                    units: 1,
                    productname: 'Headphone',
                    info:
                        'There is a issue of hearing of the headset that’s why i want to change the item',
                  ),
                  const _ProductTabModule(
                    date: 'May 2, 2024',
                    time: '10:32:27 AM',
                    money: 'UGX 2000',
                    name: 'Khairul',
                    units: 1,
                    productname: 'Headphone',
                    info:
                        'There is a issue of hearing of the headset that’s why i want to change the item',
                  ),
                  const _ProductTabModule(
                    date: 'May 2, 2024',
                    time: '10:32:27 AM',
                    money: 'UGX 2000',
                    name: 'Khairul',
                    units: 1,
                    productname: 'Headphone',
                    info:
                        'There is a issue of hearing of the headset that’s why i want to change the item',
                  ),
                  const _ProductTabModule(
                    date: 'May 2, 2024',
                    time: '10:32:27 AM',
                    money: 'UGX 2000',
                    name: 'Khairul',
                    units: 1,
                    productname: 'Headphone',
                    info:
                        'There is a issue of hearing of the headset that’s why i want to change the item',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 16),
            child: ButtonNoIconWidget(
              text: 'Add New',
              onclickFunction: () {
                Get.to(AddBadStock());
              },
            ),
          )
        ],
      ),
    );
  }
}

class _ProductTabModule extends StatelessWidget {
  final String date;
  final String time;
  final String money;
  final String name;
  final String info;
  final int units;
  final String productname;

  const _ProductTabModule({
    required this.date,
    required this.time,
    required this.money,
    required this.name,
    required this.info,
    required this.units,
    required this.productname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  text: productname,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: tasseTextBlack,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                decoration: BoxDecoration(
                  color: tasseSuccessGreenColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Text(
                  units.toString(),
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: tassePrimaryWhite,
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
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: tasseBoaderGrayColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              info,
              style: const TextStyle(
                color: tasseTextGray,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
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
