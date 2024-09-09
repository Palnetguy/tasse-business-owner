// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class ProductSelection extends StatelessWidget {
  const ProductSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // aap bar
          SecondaryAppBar(
            isXIcon: false,
            title: 'Product Selection',
            storeName: '',
          ),

          // search
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
            child: Container(
              margin: EdgeInsets.all(24),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.only(left: 18, right: 18, top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: tasseBoaderGrayColor,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        _SelectProductWdget(
                          units: 2,
                          productName: 'Headphone',
                          checkboxValue: false,
                          onChange: (value) {},
                        ),
                        _SelectProductWdget(
                          units: 2,
                          productName: 'Headphone',
                          checkboxValue: true,
                          onChange: (value) {},
                        ),
                        _SelectProductWdget(
                          units: 2,
                          productName: 'Headphone',
                          checkboxValue: false,
                          onChange: (value) {},
                        ),
                        _SelectProductWdget(
                          units: 2,
                          productName: 'Headphone',
                          checkboxValue: false,
                          onChange: (value) {},
                        ),
                        _SelectProductWdget(
                          units: 2,
                          productName: 'Headphone',
                          checkboxValue: false,
                          onChange: (value) {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // this button must show up when at least on is clicked

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
              text: 'Proceed',
              margin: EdgeInsets.all(0),
            ),
          )
        ],
      ),
    );
  }
}

class _SelectProductWdget extends StatelessWidget {
  final int units;
  final String productName;
  final bool checkboxValue;
  final void Function(bool? value)? onChange;

  const _SelectProductWdget({
    required this.units,
    required this.productName,
    required this.checkboxValue,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      margin: EdgeInsets.only(bottom: 16),
      decoration: const BoxDecoration(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName,
                style: TextStyle(
                  color: tasseTextGray,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Qty Available: $units',
                style: TextStyle(
                  color: tasseGray400Color,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Checkbox(
            activeColor: (tasseSuccessGreenColor),
            value: checkboxValue,
            onChanged: onChange,
          ),
        ],
      ),
    );
  }
}
