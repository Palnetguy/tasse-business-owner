// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';

class ChooseShopCategory extends StatelessWidget {
  const ChooseShopCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBarChooseCategory(
            isXIcon: true,
            title: 'Choose Shop Category',
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Container(
              padding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: tasseSelectLineColor,
                  width: 1.5,
                ),
              ),
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                children: [
                  ChooseShopTab(
                    title: 'Hotel',
                    cheakBoxValue: false,
                    onChanged: (value) {},
                  ),
                  ChooseShopTab(
                    title: 'Store',
                    cheakBoxValue: false,
                    onChanged: (value) {},
                  ),
                  ChooseShopTab(
                    title: 'Filling station',
                    cheakBoxValue: true,
                    onChanged: (value) {},
                  ),
                  ChooseShopTab(
                    title: 'Sales por',
                    cheakBoxValue: false,
                    onChanged: (value) {},
                  ),
                  ChooseShopTab(
                    title: 'Shop',
                    cheakBoxValue: false,
                    onChanged: (value) {},
                  ),
                  ChooseShopTab(
                    title: 'Bar Management',
                    cheakBoxValue: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ),
          const Expanded(child: SizedBox()),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.5),
            child: ButtonNoIconWidget(text: 'Continue'),
          ),
        ],
      ),
    );
  }
}

class ChooseShopTab extends StatelessWidget {
  final String title;
  final bool cheakBoxValue;
  // final Function(bool value) onChanged;
  final Function(bool?)? onChanged;
  const ChooseShopTab({
    super.key,
    required this.title,
    required this.cheakBoxValue,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: tasseSelectLineColor),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Checkbox(
            // fillColor: MaterialStatePropertyAll(tasseSuccessGreenColor),
            focusColor: (tasseSuccessGreenColor),
            activeColor: tasseSuccessGreenColor,
            value: cheakBoxValue,
            side: const BorderSide(
              color: tasseTabUnselectedColor,
            ),
            onChanged: onChanged,
          )
        ],
      ),
    );
  }
}

class SecondaryAppBarChooseCategory extends StatelessWidget {
  final bool isXIcon;
  final String title;
  const SecondaryAppBarChooseCategory({
    super.key,
    required this.isXIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20, left: 24, bottom: 14, right: 24),
      color: tassePrimaryRed,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: isXIcon
                      ? Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                width: 1.5, color: tassePrimaryWhite),
                          ),
                          child: const Icon(
                            Icons.close_rounded,
                            size: 12,
                            color: tassePrimaryWhite,
                          ),
                        )
                      : const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 24,
                          color: tassePrimaryWhite,
                        ),
                ),
                const SizedBox(width: 10),
                // text
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: tassePrimaryWhite,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                // here ....
                // when clicked this dialog shows up
                Get.defaultDialog(
                  title: "",
                  titleStyle: const TextStyle(fontSize: 0),
                  titlePadding: const EdgeInsets.all(0),
                  contentPadding: const EdgeInsets.all(0),
                  // middleText: 'Tests vsfs sfs sss ss ss s',
                  backgroundColor: Colors.transparent,
                  // buttonColor: Colors.red,
                  middleTextStyle: const TextStyle(fontSize: 0),
                  // this is the dialog in a nother file in forgort pass word folder
                  content: const PopUpForAddShopCategory(),
                  barrierDismissible: false,
                );
              },
              child: const Text(
                'Add New',
                style: TextStyle(
                  color: tassePrimaryWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PopUpForAddShopCategory extends StatelessWidget {
  const PopUpForAddShopCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 0),
      padding: const EdgeInsets.only(
        top: 20,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: tassePrimaryWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(height: 20),
          const Text(
            "Add shop category",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          const InputField(
            lable: 'Name',
            hintText: 'eg.hotel',
          ),
          Row(
            children: [
              ButtonFlexibleNoIconWidget(
                // width: double.infinity,
                isFilled: false,
                text: 'Cancel',
                onclickFunction: () {
                  Get.back();
                },
              ),
              const SizedBox(width: 10),
              ButtonFlexibleNoIconWidget(
                text: 'Done',
                onclickFunction: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
