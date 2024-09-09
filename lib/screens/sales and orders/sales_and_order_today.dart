// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/custom_tab_controller_with_app_bar.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';

class SalesAndOrderToday extends StatelessWidget {
  const SalesAndOrderToday({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTabControllerWithAppBar(
      length: 4,
      isXIcon: false,
      title: 'Sales & Order',
      storeName: '',
      tabs: [
        const Tab(
          child: Text('Sales'),
        ),
        const Tab(
          child: Text('Orders'),
        ),
        const Tab(
          child: Text('Returns'),
        ),
        const Tab(
          child: Text('Analysis'),
        ),
      ],
      middleWidget: // semi nav
          const Padding(
        padding: EdgeInsets.only(
          left: 24,
          top: 16,
        ),
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
      tabBarView: TabBarView(
        children: [
          // sales Column
          const _SalesSection(),
          // Orders ListView
          const Text('Two'),
          // Returns ListView
          const Text('Three'),
          // Analysis ListView
          Column(
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: false,
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 40),
                      child: Column(
                        children: [
                          const Text(
                            'Daily Sales',
                            style: TextStyle(
                              color: tasseTextGray,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            height: 230 - 77,
                            color: tasseBlackColor.withOpacity(.2),
                            child: const Center(
                              child: Text('Graph here ...'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 40),
                      child: Column(
                        children: [
                          const Text(
                            'Daily Sales',
                            style: TextStyle(
                              color: tasseTextGray,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            height: 230 - 77,
                            color: tasseBlackColor.withOpacity(.2),
                            child: const Center(
                              child: Text('Graph here ...'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 40),
                      child: Column(
                        children: [
                          const Text(
                            'Daily Sales',
                            style: TextStyle(
                              color: tasseTextGray,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            height: 230 - 77,
                            color: tasseBlackColor.withOpacity(.2),
                            child: const Center(
                              child: Text('Graph here ...'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Tbottom
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: tasseBoaderGrayColor,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          'Items',
                          style: TextStyle(
                            color: tasseGray400Color,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '4',
                          style: TextStyle(
                            color: tasseTextGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          'Qty',
                          style: TextStyle(
                            color: tasseGray400Color,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '4',
                          style: TextStyle(
                            color: tasseTextGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          'On Credit',
                          style: TextStyle(
                            color: tasseGray400Color,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'UGX 100',
                          style: TextStyle(
                            color: tasseTextGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            color: tasseGray400Color,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'UGX 1000',
                          style: TextStyle(
                            color: tasseTextGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _SalesSection extends StatelessWidget {
  const _SalesSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16, left: 24, right: 24),
          child: SearchInput(
            placeholder: 'Search by receipt number',
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            children: [
              _ReceiptTabModule(
                receiptNumber: '8484847',
                date: 'May 2,2024',
                time: '10:32:27 AM',
                money: 'UGX 2000',
                name: 'Khairul',
                noteWidget: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: tassePrimaryRed,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Text(
                    'Cash',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: tassePrimaryRed,
                    ),
                  ),
                ),
              ),
              const _ReceiptTabModule(
                receiptNumber: '8484847',
                date: 'May 2,2024',
                time: '10:32:27 AM',
                money: 'UGX 2000',
                name: 'Khairul',
              ),
              _ReceiptTabModule(
                receiptNumber: '8484847',
                date: 'May 2,2024',
                time: '10:32:27 AM',
                money: 'UGX 2000',
                name: 'Khairul',
                noteWidget: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                  decoration: BoxDecoration(
                    color: tassePrimaryRed,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Text(
                    'Unpaid: UGX 250',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: tassePrimaryWhite,
                    ),
                  ),
                ),
              ),
              const _ReceiptTabModule(
                receiptNumber: '8484847',
                date: 'May 2,2024',
                time: '10:32:27 AM',
                money: 'UGX 2000',
                name: 'Khairul',
              ),
            ],
          ),
        ),
      ],
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

class _ReceiptTabModule extends StatelessWidget {
  final String receiptNumber;
  final String date;
  final String time;
  final String money;
  final String name;
  // final bool paid;
  final Widget? noteWidget;
  // final int receiptNumber;

  const _ReceiptTabModule({
    required this.receiptNumber,
    required this.date,
    required this.time,
    required this.money,
    required this.name,
    // ignore: unused_element
    this.noteWidget,
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
                  text: 'Receipt:',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: tasseTextBlack,
                  ),
                  children: [
                    TextSpan(
                      text: '#$receiptNumber',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tasseTextBlack,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
              noteWidget != null ? noteWidget! : const SizedBox(),
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
        ],
      ),
    );
  }
}
