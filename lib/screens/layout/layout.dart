import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/layout/layout_controller.dart';
import 'package:tesse_business_owner/screens/attendants/attendants.dart';
import 'package:tesse_business_owner/screens/home/home_screen.dart';
import 'package:tesse_business_owner/screens/shops/shops.dart';
import 'package:tesse_business_owner/screens/user%20profile/user_profile.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    LayOutController controller = Get.find();
    return Scaffold(
      body: Column(
        children: [
          GetBuilder<LayOutController>(
            init: LayOutController(),
            initState: (_) {},
            builder: (_) {
              return Expanded(
                child: controller.openSection == 1
                    ? const HomeScreen()
                    : controller.openSection == 2
                        ? const Shops()
                        : controller.openSection == 3
                            ? const Attendants()
                            : controller.openSection == 4
                                ? const UserProfile()
                                : const SizedBox(),
              );
            },
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: tasseBoaderGrayColor,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<LayOutController>(
                  init: LayOutController(),
                  initState: (_) {},
                  builder: (_) {
                    return GestureDetector(
                      onTap: () {
                        controller.updateOpenSection(openIndex: 1);
                      },
                      child: SvgPicture.asset(
                        controller.openSection == 1
                            ? tasseHomeSvg
                            : tasseHomeUnSvg,
                        // color: tassePrimaryRed,
                      ),
                    );
                  },
                ),
                GetBuilder<LayOutController>(
                  init: LayOutController(),
                  initState: (_) {},
                  builder: (_) {
                    return GestureDetector(
                      onTap: () {
                        controller.updateOpenSection(openIndex: 2);
                      },
                      child: SvgPicture.asset(
                        controller.openSection == 2
                            ? tasseShoppingBasketSvg
                            : tasseShoppingBasketUnSvg,

                        // color: tassePrimaryRed,
                      ),
                    );
                  },
                ),
                GetBuilder<LayOutController>(
                  init: LayOutController(),
                  initState: (_) {},
                  builder: (_) {
                    return GestureDetector(
                      onTap: () {
                        controller.updateOpenSection(openIndex: 3);
                      },
                      child: SvgPicture.asset(
                        controller.openSection == 3
                            ? tasseaUserGroupSvg
                            : tasseaUserGroupUnSvg,
                        // tasseaUserGroupSvg,
                        // color: tassePrimaryRed,
                      ),
                    );
                  },
                ),
                GetBuilder<LayOutController>(
                  init: LayOutController(),
                  initState: (_) {},
                  builder: (_) {
                    return GestureDetector(
                      onTap: () {
                        controller.updateOpenSection(openIndex: 4);
                      },
                      child: SvgPicture.asset(controller.openSection == 4
                              ? tasseUserSvg
                              : tasseUserUnSvg

                          // tasseUserSvg,
                          // color: tassePrimaryRed,
                          ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
