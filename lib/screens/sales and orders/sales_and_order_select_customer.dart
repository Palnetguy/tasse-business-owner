import 'package:flutter/material.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class SelectCustomerSO extends StatelessWidget {
  const SelectCustomerSO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // APP BAR
          SecondaryAppBar(
            isXIcon: false,
            title: 'Select Customer',
            storeName: '',
          ),
          // LIST
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              children: [
                _CustomerTab(),
                _CustomerTab(),
                _CustomerTab(),
                _CustomerTab(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomerTab extends StatelessWidget {
  const _CustomerTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: tasseBoaderGrayColor,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // 1
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: tasseIconBgColorGreenDarker,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person,
                  size: 16,
                  color: tasseIconColorGreenDarker,
                ),
              ),
              SizedBox(width: 8),
              // 2
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ian Rush',
                    style: TextStyle(
                      color: tasseTextBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Due: UGX',
                    style: TextStyle(
                      color: tasseTabUnselectedColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),

          // 3
          Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: tasseIconBgColorRed,
            ),
            child: Text(
              'Select',
              style: TextStyle(
                color: tassePrimaryRed,
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
