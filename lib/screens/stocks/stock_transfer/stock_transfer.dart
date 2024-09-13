// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/stocks/stock_transfer/stock_tranfer_choose_category.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class StockTransfer extends StatelessWidget {
  const StockTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // appbar
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Stock Transfer',
            storeName: 'Electric shop',
          ),

          // search
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Shop to transfer to',
                  style: TextStyle(
                    color: tasseTextGray,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 16),
                SearchInput(
                  placeholder: 'Serch shop to tranfer to',
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          // list
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24),
              children: [
                _ShopWidget(
                  shopname: 'New Shop',
                  location: 'Rajshahi, Bangladesh',
                ),
                _ShopWidget(
                  shopname: 'New Shop',
                  location: 'Rajshahi, Bangladesh',
                ),
              ],
            ),
          ),
          // bttom
          Container(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: tasseBoaderGrayColor,
                  width: 1,
                ),
              ),
            ),
            child: ButtonNoIconWidget(
              border_color: tasseIconBgColorRed,
              isFilled: false,
              text: 'Transfer History',
              margin: EdgeInsets.all(0),
              onclickFunction: () {
                Get.to(StockTranferChooseCategory());
              },
            ),
          )
        ],
      ),
    );
  }
}

class _ShopWidget extends StatelessWidget {
  final String shopname;
  final String location;
  const _ShopWidget({
    required this.shopname,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: tasseBoaderGrayColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: tasseSelectIconBgColor,
                    ),
                    child: SvgPicture.asset(
                      tasseSelectIconSvg,
                      color: tasseSelectIconColor,
                      height: 16,
                      width: 16,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    shopname,
                    style: TextStyle(
                      color: tasseTextGray,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    color: tasseGray400Color,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    location,
                    style: TextStyle(
                      color: tasseTextGray,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ],
          ),
          const Text(
            'Retail',
            style: TextStyle(
              color: tasseTextGray,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
