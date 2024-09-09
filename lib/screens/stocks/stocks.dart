// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/stock/stock_controller.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

StocksController controller = Get.find();

class Stocks extends StatelessWidget {
  const Stocks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // SecondaryAppBarNoBack(title: 'HiHi', storeName: 'dhdhdh'),
          // SecondaryAppBarChooseCate(isXIcon: true, title: 'hIIII')
          const SecondaryAppBar(
            isXIcon: true,
            title: 'Stock',
            storeName: 'Electric shop',
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: ListView(
                children: const [
                  // top pps
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _TopTabs(),
                      SizedBox(width: 16),
                      _TopTabs(),
                    ],
                  ),
                  SizedBox(height: 16),
                  // product btns
                  ButtonFlexibleNoIconWidget(text: 'View Product'),
                  ButtonNoIconWidget(
                    text: 'Import Products',
                    isFilled: false,
                    border_color: tasseSelectLineColor,
                    text_color: tasseArrowIconColor,
                  ),
                  // ---- list
                  _Maintabs(
                    svgIcon: 'assets/svgs/new_product_svg.svg',
                    title: 'New Product',
                    subtitle: 'Introduce new product',
                  ),
                  _Maintabs(
                    svgIcon: 'assets/svgs/stock_in_svg.svg',
                    title: 'Stock in',
                    subtitle: 'Add to an existing stock',
                  ),
                  _Maintabs(
                    svgIcon: 'assets/svgs/purchase_svg.svg',
                    title: 'Purchase',
                    subtitle: 'View purchased items',
                  ),
                  _Maintabs(
                    svgIcon: 'assets/svgs/count_svg.svg',
                    title: 'Count',
                    subtitle: 'Tally with physical count',
                  ),
                  _Maintabs(
                    svgIcon: 'assets/svgs/bad_stock_svg.svg',
                    title: 'Bad Stock',
                    subtitle: 'View/Add faulty goods',
                  ),
                  _Maintabs(
                    svgIcon: 'assets/svgs/transfer_svg.svg',
                    title: 'Transfer',
                    subtitle: 'Transfer stock to another shop',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Maintabs extends StatelessWidget {
  final String svgIcon;
  final String title;
  final String subtitle;

  const _Maintabs({
    required this.svgIcon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: tasseBoaderGrayColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          // icon
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(right: 8),
            decoration: const BoxDecoration(
              color: tasseIconBgColorLightBlue,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              svgIcon,
              // 'assets/svgs/transfer_svg.svg',
              width: 25,
              height: 25,
            ),
          ),
          // info
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: tasseTextGray,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: tasseTodaySalesIconColor,
                  fontSize: 12,
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

class _TopTabs extends StatelessWidget {
  const _TopTabs();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        // height: 100,
        // width: (MediaQuery.of(context).size.width) / 2,
        decoration: BoxDecoration(
          color: tasseTodaySalesGgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'UGX 20,000',
              style: TextStyle(
                color: tasseTextGray,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              // textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Stock Value',
              style: TextStyle(
                color: tasseTextGray,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
