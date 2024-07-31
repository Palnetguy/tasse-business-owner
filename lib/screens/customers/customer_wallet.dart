import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/customers/customers_controller.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/main_header.dart';

import '../../widgets/pop_up_for_deposite_amount.dart';
import '../../widgets/receipt_tab_module.dart';

CustomersController controller = Get.find();

class CustomerWallet extends StatelessWidget {
  const CustomerWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderProfile(),
          GetBuilder<CustomersController>(
            init: CustomersController(),
            initState: (_) {},
            builder: (_) {
              return controller.currentEntryWallet == 0
                  ? Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.5),
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return const ReceiptTabModule(
                              receiptNumber: '8972561',
                              date: 'May 2,2024',
                              time: '10:32:27',
                              money: 'UGX 2000',
                              name: 'Ian Rush',
                            );
                          },
                        ),
                      ),
                    )
                  : const Expanded(
                      child: Center(
                        child: Text('Usage'),
                      ),
                    );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            child: ButtonNoIconWidget(
              text: 'Make Deposite',
              onclickFunction: () {
                Get.defaultDialog(
                  title: "",
                  titleStyle: const TextStyle(fontSize: 0),
                  titlePadding: const EdgeInsets.all(0),
                  contentPadding: const EdgeInsets.only(bottom: 0),
                  backgroundColor: Colors.transparent,
                  // this is the dialog in a nother file in forgort pass word folder
                  content: const PopUpForDepositeAmount(),
                  barrierDismissible: false,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // bg
        const MainHeaderWidget(
            // isLonger: true,
            ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 25,
          ),
          height: 244,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SafeArea(
                // top buttons
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: tassePrimaryWhite.withOpacity(.2),
                              borderRadius: BorderRadius.circular(1000),
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios_rounded,
                              color: tassePrimaryWhite,
                              size: 16,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Masaba Ian Samuel',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: tassePrimaryWhite,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        // Bottom Sheet
                        Get.bottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          backgroundColor: tassePrimaryWhite,
                          enableDrag: true,
                          const SelectDownloadOption(),
                        );
                        // end bottom sheet
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: tassePrimaryWhite.withOpacity(.2),
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        child: const Icon(
                          Icons.download_for_offline,
                          color: tassePrimaryWhite,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // info
              const Column(
                children: [
                  // person Logo
                  Text(
                    'Wallet Balance',
                    style: TextStyle(
                      color: tassePrimaryWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  //

                  // name
                  Text(
                    'UGX 2000',
                    style: TextStyle(
                      color: tassePrimaryWhite,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // icons
                ],
              ),
              // tab bar
              // const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // pending
                  const SizedBox(width: 20),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        controller.updateCurrentEntryWallet(0);
                      },
                      child: GetBuilder<CustomersController>(
                        init: CustomersController(),
                        initState: (_) {},
                        builder: (_) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 7,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: controller.currentEntryWallet == 0
                                  ? tassePrimaryWhite.withOpacity(.2)
                                  : Colors.transparent,
                            ),
                            child: const Text(
                              'Deposite',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: tassePrimaryWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  // invoices
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        controller.updateCurrentEntryWallet(1);
                      },
                      child: GetBuilder<CustomersController>(
                        init: CustomersController(),
                        initState: (_) {},
                        builder: (_) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 7,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: controller.currentEntryWallet == 1
                                  ? tassePrimaryWhite.withOpacity(.2)
                                  : Colors.transparent,
                            ),
                            child: const Text(
                              'Usage',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: tassePrimaryWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SelectDownloadOption extends StatelessWidget {
  const SelectDownloadOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        // header
        const SelectShopHeader(),
        // line
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: 1.5,
          color: tasseSelectLineColor,
        ),
        const SizedBox(
          height: 5,
        ),
        //
        DownloadTile(
          text: 'New Shop',
          onclick: () {},
        ),
        DownloadTile(
          text: 'Old Shop',
          onclick: () {},
        ),
        DownloadTile(
          text: 'Electric Shop',
          onclick: () {},
        ),
      ],
    );
  }
}

class SelectShopHeader extends StatelessWidget {
  const SelectShopHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Text(
        'Select Download Option',
        style: TextStyle(
          color: tasseTextBlack,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
      trailing: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 1.5, color: tasseTextBlack),
          ),
          child: const Icon(
            Icons.close_rounded,
            size: 15,
            color: tasseTextBlack,
          ),
        ),
      ),
    );
  }
}

class DownloadTile extends StatelessWidget {
  final VoidCallback? onclick;
  final String text;

  const DownloadTile({
    super.key,
    this.onclick,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onclick;
      },
      child: ListTile(
        minLeadingWidth: 0,
        horizontalTitleGap: 16,
        title: Text(
          text,
          style: const TextStyle(
            color: tasseTextBlack,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        leading: const Icon(
          Icons.file_download_outlined,
          size: 20,
          color: tasseTextBlack,
        ),
      ),
    );
  }
}
