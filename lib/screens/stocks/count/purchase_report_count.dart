import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/stocks/count/count_history.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class PurchasesReportCount extends StatelessWidget {
  const PurchasesReportCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Purchases Report',
            storeName: 'Electric shop',
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              children: [
                // top
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: tasseBoaderGrayColor,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: SearchInput(
                              placeholder: 'Quick search item',
                            ),
                          ),
                          InputSetFnBtn(
                            icon: Icons.filter_alt_outlined,
                            onClick: () {
                              Get.defaultDialog(
                                title: "",
                                titleStyle: const TextStyle(fontSize: 0),
                                titlePadding: const EdgeInsets.all(0),
                                contentPadding:
                                    const EdgeInsets.only(bottom: 0),
                                backgroundColor: Colors.transparent,
                                // this is the dialog in a nother file in forgort pass word folder
                                content: const _FilterDialog(),
                                barrierDismissible: false,
                              );
                            },
                          ),
                          InputSetFnBtn(icon: Icons.document_scanner_outlined),
                        ],
                      ),
                      SizedBox(height: 16),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: tasseTodaySalesGgColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Items Available',
                              style: TextStyle(
                                color: tasseTextGray,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '6',
                              style: TextStyle(
                                color: tasseTextGray,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      ButtonNoIconWidget(
                        text: 'View Count History',
                        isFilled: false,
                        border_color: tasseBoaderGrayColor,
                        text_color: tasseTextBlack,
                        onclickFunction: () {
                          Get.to(CountHistory());
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                // list
                Container(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 20,
                    // bottom: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: tasseBoaderGrayColor,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      _RptTab(),
                      _RptTab(),
                      _RptTab(),
                      _RptTab(),
                      _RptTab(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _FilterDialog extends StatelessWidget {
  const _FilterDialog();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        color: tassePrimaryWhite,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'All',
              style: TextStyle(
                color: tasseGray400Color,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Counted Today',
              style: TextStyle(
                color: tasseGray400Color,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Not Counted Today',
              style: TextStyle(
                color: tasseGray400Color,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Counted Today',
              style: TextStyle(
                color: tasseGray400Color,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RptTab extends StatelessWidget {
  const _RptTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: tasseSelectLineColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // name

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Headphone',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: tasseTextGray,
                ),
              ),
              // SizedBox(height: 6),
              Text(
                'System Count: 4',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: tasseTabUnselectedColor,
                ),
              ),
            ],
          ),
          // input
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: InputFieldSmall(lable: 'Physical Count'),
            ),
          ),
          // btn
          Container(
            width: 43,
            child: ButtonNoIconWidget(
              text: "OK",
              margin: EdgeInsets.all(0),
              // padding: EdgeInsets.all(0),
            ),
          )
        ],
      ),
    );
  }
}
