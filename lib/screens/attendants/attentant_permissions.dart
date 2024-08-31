// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/attendants/attendants_controller.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

AttendantsController controller = Get.find();

class AttendantPermissions extends StatelessWidget {
  const AttendantPermissions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Permissions',
            storeName: '',
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 20,
              ),
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: tasseSelectLineColor,
                      width: 1.5,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          GetBuilder<AttendantsController>(
                            init: AttendantsController(),
                            initState: (_) {},
                            builder: (_) {
                              return PermissionTap(
                                isOpen: controller.posPermissionOpen,
                                title: 'POS',
                                updateIsOpen:
                                    controller.updateposPermissionOpen,
                                permissions: [
                                  PermissionSlider(
                                    title: 'Can sell',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Can sell to dealer  & wholesaler',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Discount',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Edit price',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              );
                            },
                          ),
                          GetBuilder<AttendantsController>(
                            init: AttendantsController(),
                            initState: (_) {},
                            builder: (_) {
                              return PermissionTap(
                                isOpen: controller.stockPermissionOpen,
                                updateIsOpen:
                                    controller.updatestockPermissionOpen,
                                title: 'STOCK',
                                permissions: [
                                  PermissionSlider(
                                    title: 'View product',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Add product',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Stock summary',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'View purchases',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Stock count',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Badstock',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Transfer',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Return',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Delete purchases invoice',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              );
                            },
                          ),
                          GetBuilder<AttendantsController>(
                            init: AttendantsController(),
                            initState: (_) {},
                            builder: (_) {
                              return PermissionTap(
                                isOpen: controller.salePermissionOpen,
                                updateIsOpen:
                                    controller.updatesalePermissionOpen,
                                title: 'SALES',
                                permissions: [
                                  PermissionSlider(
                                    title: 'View sales',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Return',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Delete',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              );
                            },
                          ),
                          GetBuilder<AttendantsController>(
                            init: AttendantsController(),
                            initState: (_) {},
                            builder: (_) {
                              return PermissionTap(
                                isOpen: controller.accountPermissionOpen,
                                updateIsOpen:
                                    controller.updateaccountPermissionOpen,
                                title: 'ACCOUNTS',
                                permissions: [
                                  PermissionSlider(
                                    title: 'Cashflow',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              );
                            },
                          ),
                          GetBuilder<AttendantsController>(
                            init: AttendantsController(),
                            initState: (_) {},
                            builder: (_) {
                              return PermissionTap(
                                isOpen: controller.expensesPermissionOpen,
                                updateIsOpen:
                                    controller.updateexpensesPermissionOpen,
                                title: 'EXPENSES',
                                permissions: [
                                  PermissionSlider(
                                    title: 'Manage',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              );
                            },
                          ),
                          GetBuilder<AttendantsController>(
                            init: AttendantsController(),
                            initState: (_) {},
                            builder: (_) {
                              return PermissionTap(
                                isOpen: controller.suppliersPermissionOpen,
                                updateIsOpen:
                                    controller.updatesuppliersPermissionOpen,
                                title: 'SUPPLIERS',
                                permissions: [
                                  PermissionSlider(
                                    title: 'Manage',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Switch',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              );
                            },
                          ),
                          GetBuilder<AttendantsController>(
                            init: AttendantsController(),
                            initState: (_) {},
                            builder: (_) {
                              return PermissionTap(
                                isOpen: controller.customersPermissionOpen,
                                updateIsOpen:
                                    controller.updatecustomersPermissionOpen,
                                title: 'Customers',
                                permissions: [
                                  PermissionSlider(
                                    title: 'Manage',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Switch',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              );
                            },
                          ),
                          GetBuilder<AttendantsController>(
                            init: AttendantsController(),
                            initState: (_) {},
                            builder: (_) {
                              return PermissionTap(
                                isOpen: controller.shopPermissionOpen,
                                updateIsOpen:
                                    controller.updateshopPermissionOpen,
                                title: 'SHOP',
                                permissions: [
                                  PermissionSlider(
                                    title: 'Manage',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Switch',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              );
                            },
                          ),
                          GetBuilder<AttendantsController>(
                            init: AttendantsController(),
                            initState: (_) {},
                            builder: (_) {
                              return PermissionTap(
                                isOpen: controller.attendantsPermissionOpen,
                                updateIsOpen:
                                    controller.updateattendantsPermissionOpen,
                                title: 'ATTENDANTS',
                                permissions: [
                                  PermissionSlider(
                                    title: 'Manage',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                  PermissionSlider(
                                    title: 'Switch',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              );
                            },
                          ),
                          GetBuilder<AttendantsController>(
                            init: AttendantsController(),
                            initState: (_) {},
                            builder: (_) {
                              return PermissionTap(
                                isOpen: controller.usagePermissionOpen,
                                updateIsOpen:
                                    controller.updateusagePermissionOpen,
                                title: 'USAGE',
                                permissions: [
                                  PermissionSlider(
                                    title: 'Manage',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              );
                            },
                          ),
                          GetBuilder<AttendantsController>(
                            init: AttendantsController(),
                            initState: (_) {},
                            builder: (_) {
                              return PermissionTap(
                                isOpen: controller.supportPermissionOpen,
                                updateIsOpen:
                                    controller.updatesupportPermissionOpen,
                                title: 'SUPPORT',
                                permissions: [
                                  PermissionSlider(
                                    title: 'Manage',
                                    initialValue: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // const Expanded(child: const SizedBox()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ButtonNoIconWidget(
              text: 'Update  Changes',
              onclickFunction: () {},
            ),
          )
        ],
      ),
    );
  }
}

class PermissionTap extends StatelessWidget {
  final String title;
  final List<Widget> permissions;
  final bool isOpen;
  final Function()? updateIsOpen;

  const PermissionTap({
    super.key,
    required this.title,
    required this.permissions,
    required this.isOpen,
    this.updateIsOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.only(bottom: 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: tasseSelectLineColor,
            width: 1.5,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: tasseTextBlack,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: updateIsOpen,
                child: Icon(
                  isOpen
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  size: 20,
                  color: tasseBlackColor,
                ),
              )
            ],
          ),
          isOpen
              ? Column(
                  children: permissions,
                )
              : const SizedBox(height: 0)
        ],
      ),
    );
  }
}

class PermissionSlider extends StatelessWidget {
  final String title;
  final bool initialValue;

  final Function(bool) onChanged;

  const PermissionSlider({
    super.key,
    required this.title,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: tasseNoInternetTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SliderButtonCustWidget(
            initialValue: initialValue,
            onChanged: onChanged,
          )
        ],
      ),
    );
  }
}
