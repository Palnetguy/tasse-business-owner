import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/attendants/attentant_permissions.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class AttendantProfile extends StatelessWidget {
  const AttendantProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Ian Rush',
            storeName: '',
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(
                top: 40.5,
                left: 40.5,
                right: 40.5,
              ),
              children: [
                InputField(
                  lable: 'User Name*',
                  controller: TextEditingController(text: 'Siyum Khan'),
                ),
                const DropDownInputField(
                  hintText: '',
                  options: ['Electric shop'],
                  lable: 'Shop Name*',
                  initialIndex: 0,
                ),
                InputField(
                  lable: 'User ID*',
                  controller: TextEditingController(text: ' 6608'),
                ),
                InputField(
                  isPasswordFeild: true,
                  lable: 'Password*',
                  controller: TextEditingController(text: '1928287262'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
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
                          content: const PopUpForUpdatePassword(),
                          barrierDismissible: false,
                        );
                      },
                      child: const Text(
                        'Reset Password',
                        style: TextStyle(
                          color: tassePrimaryRed,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                ButtonNoIconWidget(
                  text: 'Update',
                  onclickFunction: () {},
                ),
                Row(
                  children: [
                    ButtonFlexibleNoIconWidget(
                      text: 'Remove Attendant',
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
                          content: const PopUpForConfirmDelete(),
                          barrierDismissible: false,
                        );
                      },
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: tasseSelectLineColor,
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: tasseSelectLineColor,
                            ),
                            child: const Icon(
                              Icons.lock,
                              color: tasseBlackColor,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const AttendantPermissions());
                            },
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Update Permissions',
                                  style: TextStyle(
                                    color: tasseTextBlack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Update roles and permissions',
                                  style: TextStyle(
                                    color: tasseTabUnselectedColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                        color: tasseBlackColor,
                      )
                    ],
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

class PopUpForConfirmDelete extends StatelessWidget {
  const PopUpForConfirmDelete({super.key});

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
            "Confirm Delete",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "Go you want to delete this item",
            style: TextStyle(
              color: tasseGray400Color,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
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
                text: 'Delete',
                onclickFunction: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PopUpForUpdatePassword extends StatelessWidget {
  const PopUpForUpdatePassword({super.key});

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
            "Confirm Delete",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 27),
          InputField(
            lable: 'New Password',
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
                text: 'Delete',
                onclickFunction: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
