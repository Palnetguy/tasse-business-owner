import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/shop/shop_controller.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class EachShop extends StatelessWidget {
  const EachShop({super.key});

  @override
  Widget build(BuildContext context) {
    ShopController controller = Get.find();

    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Electric Shop',
            storeName: '',
          ),
          const SizedBox(height: 16),
          // shop details
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: tasseBoaderGrayColor, width: 1.5),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shop Details',
                      style: TextStyle(
                        color: tasseTextBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Edit your shop details',
                      style: TextStyle(
                        color: tasseTabUnselectedColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 20,
                  color: tasseTabUnselectedColor,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // backup setting
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: tasseBoaderGrayColor, width: 1.5),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Backup Settings',
                            style: TextStyle(
                              color: tasseTextBlack,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Data backup is automatic by default but can download it instantly as well',
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                              color: tasseTabUnselectedColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GetBuilder<ShopController>(
                      init: ShopController(),
                      initState: (_) {},
                      builder: (_) {
                        return GestureDetector(
                          onTap: () {
                            controller.updateisBackupSettingsOpen();
                          },
                          child: Icon(
                            controller.isBackupSettingsOpen
                                ? Icons.keyboard_arrow_up_rounded
                                : Icons.keyboard_arrow_down_rounded,
                            size: 20,
                            color: tasseTabUnselectedColor,
                          ),
                        );
                      },
                    ),
                  ],
                ),

                // ots

                GetBuilder<ShopController>(
                  init: ShopController(),
                  initState: (_) {},
                  builder: (_) {
                    if (controller.isBackupSettingsOpen) {
                      return Column(
                        children: [
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Allow Back up',
                                style: TextStyle(
                                  color: tasseTextBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SliderButtonCustWidget(
                                initialValue: controller.isAllowBackUpOpen,
                                onChanged: (value) {
                                  controller.updateisAllowBackUpOpen();
                                },
                              )
                            ],
                          ),
                          GetBuilder<ShopController>(
                            init: ShopController(),
                            initState: (_) {},
                            builder: (_) {
                              return controller.isAllowBackUpOpen
                                  ? Column(
                                      children: [
                                        const SizedBox(height: 16),
                                        const InputField(
                                          lable: 'Email',
                                          hintText: 'test@gmail.com',
                                        ),
                                        const DropDownInputField(
                                          hintText:
                                              'choose backup send interval',
                                          options: [
                                            'Every day',
                                            'Every end of the Month',
                                            'Every end of the Year',
                                          ],
                                          lable: 'Backup send interval',
                                        ),
                                        ButtonNoIconWidget(
                                          text: 'Backup Now',
                                          onclickFunction: () {
                                            Get.defaultDialog(
                                              title: "",
                                              titleStyle: const TextStyle(
                                                fontSize: 0,
                                              ),
                                              titlePadding:
                                                  const EdgeInsets.all(
                                                0,
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.all(
                                                0,
                                              ),
                                              // middleText: 'Tests vsfs sfs sss ss ss s',
                                              backgroundColor:
                                                  Colors.transparent,
                                              // buttonColor: Colors.red,
                                              middleTextStyle: const TextStyle(
                                                fontSize: 0,
                                              ),
                                              // this is the dialog in a nother file in forgort pass word folder
                                              content:
                                                  const PopUpForWhatYouWillGet(),
                                              barrierDismissible: false,
                                            );
                                          },
                                        ),
                                      ],
                                    )
                                  : const SizedBox(height: 0);
                            },
                          ),
                        ],
                      );
                    } else {
                      return const SizedBox(height: 0);
                    }
                  },
                ),
              ],
            ),
          ),
          // Delete thi shop
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: tasseBoaderGrayColor, width: 1.5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delete This Shop',
                      style: TextStyle(
                        color: tasseTextBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Erase all shop data',
                      style: TextStyle(
                        color: tasseTabUnselectedColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
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
                      content: const PopUpForConfirmDelete(),
                      barrierDismissible: false,
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: tasseIconBgColorRed,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: tassePrimaryRed,
                      size: 25,
                    ),
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

class PopUpForWhatYouWillGet extends StatelessWidget {
  const PopUpForWhatYouWillGet({super.key});

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
          const ChooseShopWhatYouWillGetTab(
            title: 'Product Sales Report',
            cheakBoxValue: true,
          ),
          const ChooseShopWhatYouWillGetTab(
            title: 'Product Sales Report',
            cheakBoxValue: false,
          ),
          const ChooseShopWhatYouWillGetTab(
            title: 'Product Sales Report',
            cheakBoxValue: false,
          ),
          Row(
            children: [
              const SizedBox(width: 10),
              ButtonFlexibleNoIconWidget(
                text: 'Back Now',
                onclickFunction: () {
                  Get.back();
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
                    content: const _PopUpForBackUp(),
                    barrierDismissible: false,
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ChooseShopWhatYouWillGetTab extends StatelessWidget {
  final String title;
  final bool cheakBoxValue;
  // final Function(bool value) onChanged;
  final Function(bool?)? onChanged;
  const ChooseShopWhatYouWillGetTab({
    super.key,
    required this.title,
    required this.cheakBoxValue,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Checkbox(
          // fillColor: MaterialStatePropertyAll(tasseSuccessGreenColor),

          focusColor: tasseSuccessGreenColor,
          activeColor: tasseSuccessGreenColor,
          // hoverColor: tasseSuccessGreenColor,
          // activeColor: Colors.red,
          value: cheakBoxValue,
          side: const BorderSide(
            color: tasseTabUnselectedColor,
          ),
          onChanged: onChanged,
        ),
        Text(title),
      ],
    );
  }
}

class _PopUpForBackUp extends StatelessWidget {
  const _PopUpForBackUp();

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
            "Backup",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "Email with backup attachments sent to masabaian332@gmail.com",
            style: TextStyle(
              color: tasseGray400Color,
              fontSize: 14,
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
                text: 'Okay',
                onclickFunction: () {},
              ),
            ],
          )
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
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "Are you sure you want to delete this shop? This option is irreversible and it will erase all your shops data and you cannot recover them again.",
            style: TextStyle(
              color: tasseGray400Color,
              fontSize: 14,
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
