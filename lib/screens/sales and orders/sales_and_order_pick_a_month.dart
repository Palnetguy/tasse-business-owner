// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class PickAMonthSO extends StatelessWidget {
  const PickAMonthSO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // appbar
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Pick a Month',
            storeName: '',
          ),
          // list
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            children: const [
              _Month(month: 'January'),
              _Month(month: 'February'),
              _Month(month: 'March'),
              _Month(month: 'April'),
              _Month(month: 'May'),
              _Month(month: 'June'),
              _Month(month: 'July'),
              _Month(month: 'August'),
              _Month(month: 'September'),
              _Month(month: 'November'),
              _Month(month: 'December'),
            ],
          ),
        ],
      ),
    );
  }
}

class _Month extends StatelessWidget {
  final String month;
  final void Function()? onClick;
  const _Month({
    required this.month,
    // ignore: unused_element
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.only(bottom: 16),
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
          Text(
            month,
            style: const TextStyle(
              color: tasseTextGray,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          GestureDetector(
            onTap: onClick,
            child: const Icon(
              Icons.chevron_right_rounded,
              color: tasseArrowIconColor,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
