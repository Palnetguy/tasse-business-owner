import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/customers/customers_controller.dart';
import 'package:tesse_business_owner/screens/Supplier/edit_supplier.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/main_header.dart';

// import '../../controllers/Customer/Customer_controller.dart';

CustomersController controller = Get.find();

class CustomerProfile extends StatelessWidget {
  const CustomerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderProfile(),

          // rander each section according to the buttons in header

          // pending set
          GetBuilder<CustomersController>(
            init: CustomersController(),
            initState: (_) {},
            builder: (_) {
              return Expanded(
                child: Column(
                  children: [
                    controller.currentEntryProfile == 0
                        ? const Expanded(
                            child: Center(
                              child: Text(
                                "No entries found (credits)",
                                style: TextStyle(
                                  color: tasseTextBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),

                    // invoice set
                    controller.currentEntryProfile == 1
                        ? const Expanded(
                            child: Center(
                              child: Text(
                                "No entries found (Sales)",
                                style: TextStyle(
                                  color: tasseTextBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),

                    // return sect
                    controller.currentEntryProfile == 2
                        ? const Expanded(
                            child: Center(
                              child: Text(
                                "No entries found (Returns)",
                                style: TextStyle(
                                  color: tasseTextBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// ----
// widgets
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
          isLonger: true,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 25,
          ),
          height: 294,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SafeArea(
                // top buttons
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const EditSupplier());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: tassePrimaryWhite.withOpacity(.2),
                              borderRadius: BorderRadius.circular(1000),
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: tassePrimaryWhite,
                              size: 24,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
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
                              content: const PopUpForDelete(),
                              barrierDismissible: false,
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: tassePrimaryWhite.withOpacity(.2),
                              borderRadius: BorderRadius.circular(1000),
                            ),
                            child: const Icon(
                              Icons.delete,
                              color: tassePrimaryWhite,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // info
              Column(
                children: [
                  // person Logo
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: tassePrimaryWhite,
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: tassePrimaryRed,
                      size: 38,
                    ),
                  ),

                  //
                  const SizedBox(height: 10),
                  // name
                  const Text(
                    'Ian Rush Pro',
                    style: TextStyle(
                      color: tassePrimaryWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // icons
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.message_rounded,
                          color: tassePrimaryWhite,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 25),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          tasseWhatsappSvg,
                          color: tassePrimaryWhite,
                          width: 20,
                          height: 20,
                        ),
                      ),
                      const SizedBox(width: 25),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.phone,
                          color: tassePrimaryWhite,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 25),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(26),
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                tasseWalletSvg,
                                color: tassePrimaryRed,
                                width: 15,
                                height: 15,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Wallet',
                              style: TextStyle(
                                color: tassePrimaryRed,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              // tab bar
              // const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // pending
                  GestureDetector(
                    onTap: () {
                      controller.updateCurrentEntryProfile(0);
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
                            color: controller.currentEntryProfile == 0
                                ? tassePrimaryWhite.withOpacity(.2)
                                : Colors.transparent,
                          ),
                          child: const Text(
                            'Credit',
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
                  // invoices
                  GestureDetector(
                    onTap: () {
                      controller.updateCurrentEntryProfile(1);
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
                            color: controller.currentEntryProfile == 1
                                ? tassePrimaryWhite.withOpacity(.2)
                                : Colors.transparent,
                          ),
                          child: const Text(
                            'Sales',
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
                  // Returns
                  GestureDetector(
                    onTap: () {
                      controller.updateCurrentEntryProfile(2);
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
                            color: controller.currentEntryProfile == 2
                                ? tassePrimaryWhite.withOpacity(.2)
                                : Colors.transparent,
                          ),
                          child: const Text(
                            'Returns',
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
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PopUpForDelete extends StatelessWidget {
  const PopUpForDelete({super.key});

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
            "Are you sure you want to delete this item",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            textAlign: TextAlign.center,
            "This action can not be reverted",
            style: TextStyle(
              color: tasseTabUnselectedColor,
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
