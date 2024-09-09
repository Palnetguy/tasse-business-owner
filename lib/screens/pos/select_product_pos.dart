// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class SelectProductPos extends StatelessWidget {
  const SelectProductPos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SecondaryAppBar(
            isXIcon: false,
            title: 'Select Product',
            storeName: '',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: SearchInput(
                    placeholder: 'Quick search item',
                  ),
                ),
                InputSetFnBtn(icon: Icons.document_scanner_outlined),
              ],
            ),
          ),
          // list
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16, left: 24, right: 24),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _ProductTab(name: 'Headphone', price: 'UGX 2000', qty: 3),
                  _ProductTab(name: 'Headphone', price: 'UGX 2000', qty: 3),
                  _ProductTab(name: 'Headphone', price: 'UGX 2000', qty: 3),
                  _ProductTab(name: 'Headphone', price: 'UGX 2000', qty: 3),
                  _ProductTab(name: 'Headphone', price: 'UGX 2000', qty: 3),
                  _ProductTab(name: 'Headphone', price: 'UGX 2000', qty: 3),
                  _ProductTab(name: 'Headphone', price: 'UGX 2000', qty: 3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductTab extends StatelessWidget {
  final String name;
  final String price;
  final int qty;
  const _ProductTab({
    required this.name,
    required this.price,
    required this.qty,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: tasseSelectLineColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 1
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: tasseTextGray,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Qty Available: $qty',
                style: TextStyle(
                  color: tasseGray400Color,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          // 2
          Text(
            price,
            style: TextStyle(
              color: tasseTextGray,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
