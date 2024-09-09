import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

// var _styleText1 = TextStyle(
//   color: tasseTabUnselectedColor,
//   fontSize: 12,
//   fontWeight: FontWeight.w400,
// );
// var _styleText2 = TextStyle(
//   color: tasseTextGray,
//   fontSize: 12,
//   fontWeight: FontWeight.w500,
// );

class DeliveryNoteSO extends StatelessWidget {
  const DeliveryNoteSO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // appbar
          SecondaryAppBar(
            isXIcon: false,
            title: 'Delivert Note',
            storeName: '',
          ),
          // dids
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  // top
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: tassePrimaryWhite,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: tasseBlackColor.withOpacity(.11),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'To: ',
                                  style: TextStyle(
                                    color: tasseTabUnselectedColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Akther Hossain',
                                  style: TextStyle(
                                    color: tasseTextGray,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  'Contact: ',
                                  style: TextStyle(
                                    color: tasseTabUnselectedColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  'Address: ',
                                  style: TextStyle(
                                    color: tasseTabUnselectedColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        // header
                        SizedBox(height: 24),
                        Text(
                          'Delivery Note',
                          style: TextStyle(
                            color: tasseTextGray,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 24),
                        // table and more..
                        Table(
                          border: TableBorder.all(
                            color: tasseSelectLineColor,
                            width: 1,
                          ),
                          children: [
                            TableRow(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    'Product',
                                    style: TextStyle(
                                      color: tasseTabUnselectedColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    // textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    'City',
                                    style: TextStyle(
                                      color: tasseTabUnselectedColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    'Unite Price',
                                    style: TextStyle(
                                      color: tasseTabUnselectedColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    'Total',
                                    style: TextStyle(
                                      color: tasseTabUnselectedColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    // textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    'Headphone',
                                    style: TextStyle(
                                      color: tasseTabUnselectedColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    // textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      color: tasseTabUnselectedColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    'UGX 250',
                                    style: TextStyle(
                                      color: tasseTabUnselectedColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    'UGX 2000',
                                    style: TextStyle(
                                      color: tasseTextGray,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    // textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Text(
                                    'Sub Total:',
                                    style: TextStyle(
                                      color: tasseTextGray,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Text(
                                    'UGX 2000',
                                    style: TextStyle(
                                      color: tasseTextGray,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Text(
                                    'Vat:',
                                    style: TextStyle(
                                      color: tasseTextGray,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Text(
                                    'UGX 0',
                                    style: TextStyle(
                                      color: tasseTextGray,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                border: Border.symmetric(
                                  horizontal: BorderSide(
                                    color: tasseTabUnselectedColor,
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Text(
                                      'Total:',
                                      style: TextStyle(
                                        color: tasseTextGray,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Text(
                                      'UGX 2000',
                                      style: TextStyle(
                                        color: tasseTextGray,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        // by
                        Row(
                          children: [
                            Text(
                              'Served by: ',
                              style: TextStyle(
                                color: tasseTabUnselectedColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Khairul Islam',
                              style: TextStyle(
                                color: tasseTextGray,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'Paid via:: ',
                              style: TextStyle(
                                color: tasseTabUnselectedColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Credit',
                              style: TextStyle(
                                color: tasseTextGray,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        // sing andmmrere
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dispatched By..............................',
                                  style: TextStyle(
                                    color: tasseTextGray,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Sign......................................',
                                  style: TextStyle(
                                    color: tasseTextGray,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Date & Time...............................',
                                  style: TextStyle(
                                    color: tasseTextGray,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dispatched By..............................',
                                  style: TextStyle(
                                    color: tasseTextGray,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Sign......................................',
                                  style: TextStyle(
                                    color: tasseTextGray,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Date & Time...............................',
                                  style: TextStyle(
                                    color: tasseTextGray,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        // thank
                        Text(
                          'Thank you for your order!',
                          style: TextStyle(
                            color: tasseTextGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 24),
                        Row(
                          children: [
                            Text(
                              'Date:',
                              style: TextStyle(
                                color: tasseTabUnselectedColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '2024-05-02 16:32',
                              style: TextStyle(
                                color: tasseTextGray,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'Printed by:',
                              style: TextStyle(
                                color: tasseTabUnselectedColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Khairul Islam',
                              style: TextStyle(
                                color: tasseTextGray,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'From::',
                              style: TextStyle(
                                color: tasseTabUnselectedColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Electric shop of address Dhaka Bangladesh',
                              style: TextStyle(
                                color: tasseTextGray,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 32),
            color: tassePrimaryRed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.print_outlined,
                  size: 24,
                  color: tassePrimaryWhite,
                ),
                Icon(
                  Icons.share_outlined,
                  size: 24,
                  color: tassePrimaryWhite,
                ),
                PageSizeSelector(
                  options: ['A4', 'A5', 'Letter', 'Legal'],
                  initialIndex: 0, // Set the initial value by index
                  onChanged: (int index) {
                    // Handle the page size selection change
                    // print('Selected page size: ${pageSizes[index]}');
                  },
                ),
                Icon(
                  Icons.insert_drive_file_outlined,
                  size: 24,
                  color: tassePrimaryWhite,
                ),
                Transform.rotate(
                  angle: pi / 2,
                  child: Icon(
                    Icons.insert_drive_file_outlined,
                    size: 24,
                    color: tasseIconBgColorRed,
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

class PageSizeSelector extends StatefulWidget {
  final List<String> options; // List of page sizes
  final int initialIndex; // Initial index for the selected page size
  final ValueChanged<int> onChanged; // Callback for when the selection changes

  PageSizeSelector({
    Key? key,
    required this.options,
    this.initialIndex = 0,
    required this.onChanged,
  }) : super(key: key);

  @override
  _PageSizeSelectorState createState() => _PageSizeSelectorState();
}

class _PageSizeSelectorState extends State<PageSizeSelector> {
  late int _currentIndex; // The current selected index

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex; // Set the initial index
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: _currentIndex, // Current selected index
      dropdownColor: tassePrimaryRed, // Set dropdown background to black
      onChanged: (int? newIndex) {
        if (newIndex != null) {
          setState(() {
            _currentIndex = newIndex; // Update the selected index
          });
          widget.onChanged(newIndex); // Call the callback with the new index
        }
      },
      items: widget.options.asMap().entries.map((entry) {
        int index = entry.key;
        String value = entry.value;
        return DropdownMenuItem<int>(
          value: index,
          child: Text(
            value,
            style:
                TextStyle(color: Colors.white), // Set the text color to white
          ),
        );
      }).toList(),
      iconEnabledColor: Colors.white, // Set the dropdown icon color to white
      underline: Container(
        padding: EdgeInsets.only(top: 16),
        height: 1,

        color: Colors.white, // Set the underline color to white
      ),
    );
  }
}
