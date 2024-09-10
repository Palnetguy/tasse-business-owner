import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class CashIn extends StatelessWidget {
  const CashIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // appbar
          SecondaryAppBar(
            isXIcon: false,
            title: 'Add Cash In',
            storeName: '',
          ),
          //
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(
                vertical: 16 + 20,
                horizontal: 24 + 20,
              ),
              children: [
                DropDownInputField(
                  options: const [],
                  lable: 'Category*',
                  hintText: 'Select category',
                  sufixWidget: ButtonNoIconWidget(
                    text: 'Add',
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    margin: EdgeInsets.only(left: 16),
                    text_color: tassePrimaryRed,
                    border_color: tasseIconBgColorRed,
                    isFilled: false,
                    onclickFunction: () {
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
                        content: const _PopUpForAddCategory(),
                        barrierDismissible: false,
                      );
                    },
                  ),
                ),
                SizedBox(height: 16),
                InputField(lable: 'Name*'),
                InputField(lable: 'Ammout*'),
                ButtonNoIconWidget(text: 'Save')
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _PopUpForAddCategory extends StatelessWidget {
  const _PopUpForAddCategory({super.key});

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
            "Add Category",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 27),
          InputField(
            lable: 'Category',
            hintText: 'eg.Loan,Capital,Contribuiton etc.',
            onChanged: (value) {},
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
                text: 'Save Now',
                onclickFunction: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
