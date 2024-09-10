// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: true,
            title: 'Report',
            storeName: 'Electric shop',
          ),
          //
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              children: [
                //
                _ReportTab(
                  name: 'Sales Report',
                  info: 'How much did you sell',
                  iconsSvg: tasseSalesReportSvg,
                ),
                _ReportTab(
                  name: 'Due Sales',
                  info: 'Credit Sales which are due to be collected',
                  iconsSvg: tasseDueSalesSvg,
                ),
                _ReportTab(
                  name: 'Purchase Report',
                  info: 'How much did you buy',
                  iconsSvg: tassePurchaseReportSvg,
                ),
                _ReportTab(
                  name: 'Expense Report',
                  info: 'How much did you sell',
                  iconsSvg: tasseExpenseReportSvg,
                ),
                _ReportTab(
                  name: 'Stock Take Report',
                  info: 'Stock taking report for your shop',
                  iconsSvg: tasseStockTakeReportSvg,
                ),
                _ReportTab(
                  name: 'Income Report',
                  info: 'Net and gross profit report for your shop',
                  iconsSvg: tasseIncomeReportSvg,
                ),
                _ReportTab(
                  name: 'Stock Report',
                  info: 'Stock report for your shop',
                  iconsSvg: tasseStockReportSvg,
                ),
                _ReportTab(
                  name: 'Products Movement',
                  info: 'Product wise sales report for your shop',
                  iconsSvg: tasseProductsMovementSvg,
                ),
                _ReportTab(
                  name: 'Sales, Profit and Expenses Graphical Analysis',
                  info: 'Sales, Profit and Expenses Graphical Analysis',
                  iconsSvg: tasseProductsMovementSvg,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ReportTab extends StatelessWidget {
  final String name;
  final String info;
  final String iconsSvg;
  final Function()? onTap;
  const _ReportTab({
    required this.name,
    required this.info,
    required this.iconsSvg,
    // ignore: unused_element
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: tasseBoaderGrayColor,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: tasseIconBgColorOrange,
            ),
            child: SvgPicture.asset(
              iconsSvg,
              height: 20,
            ),
          ),
          const SizedBox(width: 8),
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
                SizedBox(height: 2),
                Text(
                  info,
                  style: TextStyle(
                    color: tasseTabUnselectedColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
