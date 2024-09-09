// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/custom_tab_controller_with_app_bar.dart';

class StockTranferChooseCategory extends StatelessWidget {
  const StockTranferChooseCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTabControllerWithAppBar(
      length: 2,
      isXIcon: true,
      title: 'Stock Transfer',
      storeName: 'Electric Shop',
      tabs: const [
        Tab(
          height: 31 + 15,
          text: 'IN',
        ),
        Tab(
          height: 31 + 15,
          text: 'OUT',
        ),
      ],
      tabBarView: TabBarView(
        children: [
          // IN
          Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'Sorry! No Items Found',
                    style: TextStyle(
                      color: tasseBlackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // OUT
          // list
          Column(
            children: [
              SizedBox(height: 8),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    children: [
                      const _TransferTabModule(
                        date: 'May 2, 2024',
                        time: '10:32:27 AM',
                        money: 'UGX 2000',
                        name: 'Khairul',
                        units: 1,
                        transfername: 'Product Transfered to New Shop',
                        info:
                            'There is a issue of hearing of the headset that’s why i want to change the item',
                      ),
                      const _TransferTabModule(
                        date: 'May 2, 2024',
                        time: '10:32:27 AM',
                        money: 'UGX 2000',
                        name: 'Khairul',
                        units: 1,
                        transfername: 'Product Transfered to New Shop',
                        info: '',
                      ),
                      const _TransferTabModule(
                        date: 'May 2, 2024',
                        time: '10:32:27 AM',
                        money: 'UGX 2000',
                        name: 'Khairul',
                        units: 1,
                        transfername: 'Product Transfered to New Shop',
                      ),
                      const _TransferTabModule(
                        date: 'May 2, 2024',
                        time: '10:32:27 AM',
                        money: 'UGX 2000',
                        name: 'Khairul',
                        units: 1,
                        transfername: 'Product Transfered to New Shop',
                      ),
                      const _TransferTabModule(
                        date: 'May 2, 2024',
                        time: '10:32:27 AM',
                        money: 'UGX 2000',
                        name: 'Khairul',
                        units: 1,
                        transfername: 'Product Transfered to New Shop',
                      ),
                      const _TransferTabModule(
                        date: 'May 2, 2024',
                        time: '10:32:27 AM',
                        money: 'UGX 2000',
                        name: 'Khairul',
                        units: 1,
                        transfername: 'Product Transfered to New Shop',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TransferTabModule extends StatelessWidget {
  final String date;
  final String time;
  final String money;
  final String name;
  final String? info;
  final int units;
  final String transfername;

  const _TransferTabModule({
    required this.date,
    required this.time,
    required this.money,
    required this.name,
    this.info,
    required this.units,
    required this.transfername,
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
                  text: transfername,
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

          info == '' || info == null
              ? SizedBox()
              : Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: tasseBoaderGrayColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    info!,
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
