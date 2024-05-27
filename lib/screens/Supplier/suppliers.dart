// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/Supplier/add_supplier.dart';
import 'package:tesse_business_owner/screens/Supplier/supplier_profile.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';

import '../../widgets/custom_tab_controller_with_app_bar.dart';

class Suppliers extends StatelessWidget {
  const Suppliers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTabControllerWithAppBar(
      length: 2,
      isXIcon: true,
      title: 'Suppliers',
      storeName: 'Electronic Shop',
      tabs: const [
        Tab(
          height: 31 + 15,
          text: 'All',
        ),
        Tab(
          height: 31 + 15,
          text: 'Debtors',
        ),
      ],
      tabBarView: TabBarView(
        children: [
          // all
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return ViewAccountTab(
                        name: 'Ian Rush Pro',
                        onClick: () {
                          Get.to(() => const SupplierProfile());
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ButtonNoIconWidget(
                    text: 'Add Supplier',
                    onclickFunction: () {
                      Get.to(() => const AddSupplier());
                    },
                  ),
                )
              ],
            ),
          ),
          // debtors
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return ViewAccountTab(
                        name: 'Martine Rhino Fake',
                        onClick: () {
                          Get.to(() => const SupplierProfile());
                        },
                      );
                    },
                  ),
                ),
                // button to add supplier
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ButtonNoIconWidget(
                    text: 'Add Supplier',
                    onclickFunction: () {
                      Get.to(() => const AddSupplier());
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ViewAccountTab extends StatelessWidget {
  final String name;
  final Function() onClick;

  const ViewAccountTab({
    super.key,
    required this.name,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: tasseBoaderGrayColor,
          width: 1.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: tasseIconBgColorGreenDarker,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(
                  Icons.person_sharp,
                  color: tasseIconColorGreenDarker,
                  size: 24,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                name,
                style: const TextStyle(
                  color: tasseTextGray,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: onClick,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                color: tasseIconBgColorRed,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text(
                'View account',
                style: TextStyle(
                  color: tassePrimaryRed,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
