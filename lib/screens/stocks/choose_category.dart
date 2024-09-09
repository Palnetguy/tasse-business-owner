// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar_with_prefix.dart';

class ChooseStockCategory extends StatelessWidget {
  const ChooseStockCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // appbar
          SecondaryAppBarWithPrefix(
            isXIcon: false,
            title: 'Add Stock',
            storeName: 'Electric Shop',
            prefix: GestureDetector(
              onTap: () {
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
                  content: const _PopUpForAddProductCategory(),
                  barrierDismissible: false,
                );
              },
              child: const Text(
                'Add New',
                style: TextStyle(
                  color: tassePrimaryWhite,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          // search
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 24, right: 24),
            child: SearchInput(placeholder: 'Quick Search'),
          ),
          // list
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
              child: ListView(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 16, right: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: tasseBoaderGrayColor, width: 1),
                    ),
                    child: Column(
                      children: [
                        // ech item
                        _EachCategoryTab(
                          name: 'Fruites',
                          selectOncClick: () {},
                        ),
                        _EachCategoryTab(
                          name: 'Electronics',
                          selectOncClick: () {},
                        ),
                        _EachCategoryTab(
                          name: 'Export item',
                          selectOncClick: () {},
                        ),
                        _EachCategoryTab(
                          name: 'Spicy',
                          selectOncClick: () {},
                        ),
                        _EachCategoryTab(
                          name: 'Computer items',
                          selectOncClick: () {},
                        ),
                        _EachCategoryTab(
                          name: 'Mobile components',
                          selectOncClick: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _EachCategoryTab extends StatelessWidget {
  final String name;
  final VoidCallback? selectOncClick;
  const _EachCategoryTab({
    required this.name,
    this.selectOncClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: tasseSelectLineColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: tasseTextGray,
            ),
          ),
          GestureDetector(
            onTap: selectOncClick,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: tassePrimaryRed, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Select',
                style: TextStyle(
                  color: tassePrimaryRed,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PopUpForAddProductCategory extends StatelessWidget {
  const _PopUpForAddProductCategory({super.key});

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
            "Add Product Category",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 27),
          const InputField(
            lable: 'Name',
            hintText: 'eg.fruits',
          ),
          const SizedBox(height: 7),
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
