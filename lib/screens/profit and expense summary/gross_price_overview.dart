// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar_with_prefix.dart';

class GrossProfitOverview extends StatelessWidget {
  const GrossProfitOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // appbar
          SecondaryAppBarWithPrefix(
            isXIcon: false,
            title: 'Gross Profit Overview',
            storeName: '',
            prefix: Icon(
              Icons.print_rounded,
              color: tassePrimaryWhite,
              size: 24,
            ),
          ),
          // second subnav
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
          // tile
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: tassePrimaryRed,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Gross Profit',
                    style: TextStyle(
                      color: tassePrimaryWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'UGX 200',
                    style: TextStyle(
                      color: tassePrimaryWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // list
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              children: const [
                _ReportInfo(
                  name: 'Income on Sales',
                  info: 'Total income from the sales',
                  price: 'UGX 100',
                ),
                _ReportInfo(
                  name: 'Production Costs',
                  info: 'Purchases cost of the items',
                  price: 'UGX 100',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ReportInfo extends StatelessWidget {
  final String name, price;
  final String? info;

  const _ReportInfo({
    required this.name,
    required this.price,
    this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: tasseBoaderGrayColor,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: tasseTextGray,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: info == null || info == '' ? 0 : 4),
                Text(
                  info!,
                  style: TextStyle(
                    color: tasseTabUnselectedColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Text(
            price,
            style: TextStyle(
              color: tasseTextGray,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
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
