// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/user%20profile/edit_password.dart';
import 'package:tesse_business_owner/screens/user%20profile/edit_profile.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/main_header.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _Heading(),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(
                    color: tasseBlackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                ProfileTab(
                  title: 'Edit Profile',
                  svgUrl: tasseuserEditSvg,
                  onTap: () {
                    Get.to(() => const EditProfile());
                  },
                ),
                ProfileTab(
                  title: 'Password Settings',
                  svgUrl: tasselockSvg,
                  onTap: () {
                    Get.to(() => const EditPassword());
                  },
                ),
                ProfileTab(
                  title: 'Delete Account',
                  svgUrl: tasseDeleteSvg,
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
                      content: const _PopUpForDeleteAccount(),
                      barrierDismissible: false,
                    );
                  },
                ),
                ProfileTab(
                  title: 'Logout',
                  svgUrl: tasseLogoutSvg,
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
                      content: const _PopUpForLogout(),
                      barrierDismissible: false,
                    );
                  },
                ),
                _UpgradeButton(
                  onTap: () {},
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Developed by TAK Kinship Devs',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: tasseTextBlack,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24)
        ],
      ),
    );
  }
}

class _UpgradeButton extends StatelessWidget {
  final Function() onTap;
  const _UpgradeButton({
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: tasseSuccessBgGreenColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tassePriYellow,
              ),
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                'assets/svgs/crown.svg',
                width: 20,
                height: 20,
                color: tassePrimaryRed,
              ),
            ),
            const SizedBox(width: 12),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ugrade pro',
                  style: TextStyle(
                    color: tasseBlackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Buy your pack to access to the features',
                  style: TextStyle(
                    color: tasseTextBlack,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProfileTab extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final String svgUrl;
  const ProfileTab({
    super.key,
    required this.title,
    this.onTap,
    required this.svgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
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
                SvgPicture.asset(
                  svgUrl,
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    color: tasseTextBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
              color: tasseBlackColor,
            )
          ],
        ),
      ),
    );
  }
}

class _Heading extends StatelessWidget {
  const _Heading();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 1),
      children: [
        const MainHeaderWidget(),
        Container(
          padding: const EdgeInsets.only(bottom: 24),
          // color: Colors.yellow,
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: const Alignment(1, 1),
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: tassePrimaryWhite.withOpacity(.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 28,
                      color: tassePrimaryWhite,
                    ),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: tassePrimaryWhite,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 16,
                      color: tassePrimaryRed,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                'Masaba Ian Sam',
                style: TextStyle(
                  color: tassePrimaryWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'masabaian332@gmail.com',
                style: TextStyle(
                  color: tassePrimaryWhite,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _PopUpForLogout extends StatelessWidget {
  const _PopUpForLogout();

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
            "Logout",
            style: TextStyle(
              color: tasseTextBlack,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "You will be logouted from your account",
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
                text: 'Logout',
                onclickFunction: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _PopUpForDeleteAccount extends StatelessWidget {
  const _PopUpForDeleteAccount();

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
            "This action will delete all products, customers, suppliers, sales, purchases and everything else related to your account, do you want to proceed?",
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
