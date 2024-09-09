// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class AddStock extends StatelessWidget {
  const AddStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Add Stock',
            storeName: 'Electric Shop',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  const InputField(
                    lable: 'Product Name*',
                  ),
                  DropDownInputField(
                    hintText: '',
                    options: ['kg', 'Litre', 'Pieces', 'MI', 'Box'],
                    lable: 'Unit of Measure*',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      InputFieldFlexible(
                        lable: 'Quantity*',
                      ),
                      SizedBox(width: 16),
                      InputFieldFlexible(
                        lable: 'Barcode*',
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      InputFieldFlexible(
                        lable: 'Buying Price*',
                      ),
                      SizedBox(width: 16),
                      InputFieldFlexible(
                        lable: 'Selling Price*',
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: tasseInputPrimaryBgColor,
                    ),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.check_box,
                              size: 16 * 1.5,
                              color: tasseSuccessGreenColor,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Taxable? 16%',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: tasseGray400Color,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 8),
                        // text
                        Text(
                          'By ticking this box, the system assume the selling price is tax inclusive',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: tasseTabUnselectedColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  //
                  const Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: 8,
                    children: [
                      _EachCategTab(text: '+ Wholesale Price'),
                      _EachCategTab(text: '+ Dealer Price'),
                      _EachCategTab(text: '+ Category'),
                      _EachCategTab(text: '+ Supplier'),
                      _EachCategTab(text: '+ Reorder Level'),
                      _EachCategTab(text: '+ Discount')
                    ],
                  ),
                  const InputField(
                    lable: 'Note',
                    minlines: 3,
                  ),
                  // image add
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Product Image',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: tasseSelectLineColor,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Get.defaultDialog(
                                title: "",
                                titleStyle: const TextStyle(fontSize: 0),
                                titlePadding: const EdgeInsets.all(0),
                                contentPadding:
                                    const EdgeInsets.only(bottom: 0),
                                backgroundColor: Colors.transparent,
                                // this is the dialog in a nother file in forgort pass word folder
                                content: const _PictureDialog(),
                                barrierDismissible: false,
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: tasseIconBgColorRed,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.camera_alt,
                                size: 15,
                                color: tassePrimaryRed,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const ButtonFlexibleNoIconWidget(text: 'Add'),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PictureDialog extends StatelessWidget {
  const _PictureDialog();

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
              'Take Photo',
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
              'Choose From Gallery',
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

class _EachCategTab extends StatelessWidget {
  final String text;
  const _EachCategTab({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: tasseInputPrimaryBgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: tasseTextGray,
        ),
      ),
    );
  }
}
