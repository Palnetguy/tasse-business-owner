import 'package:flutter/material.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class OnHoldSalesPOS extends StatelessWidget {
  const OnHoldSalesPOS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // APP BAR
          SecondaryAppBar(
            isXIcon: false,
            title: 'On Hold Sales',
            storeName: '',
          ),
          // LIST
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              children: [
                _InvoiceTabModule(
                  invoiceNumber: '8484847',
                  date: 'May 2,2024',
                  time: '10:32:27 AM',
                  money: 'UGX 2000',
                  name: 'Khairul',
                  // paid: true,
                ),
                _InvoiceTabModule(
                  invoiceNumber: '8484847',
                  date: 'May 2,2024',
                  time: '10:32:27 AM',
                  money: 'UGX 2000',
                  name: 'Khairul',
                  // paid: true,
                ),
                _InvoiceTabModule(
                  invoiceNumber: '8484847',
                  date: 'May 2,2024',
                  time: '10:32:27 AM',
                  money: 'UGX 2000',
                  name: 'Khairul',
                  // paid: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InvoiceTabModule extends StatelessWidget {
  final String invoiceNumber;
  final String date;
  final String time;
  final String money;
  final String name;
  // final bool paid;
  // final int invoiceNumber;

  const _InvoiceTabModule({
    required this.invoiceNumber,
    required this.date,
    required this.time,
    required this.money,
    required this.name,
    // required this.paid,
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
                  text: 'Invoice:',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: tasseTextBlack,
                  ),
                  children: [
                    TextSpan(
                      text: '#$invoiceNumber',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tasseTextBlack,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: tassePrimaryRed,
                    width: 1,
                  ),
                ),
                child: Text(
                  'Cash',
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: tassePrimaryRed,
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
        ],
      ),
    );
  }
}
