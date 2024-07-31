import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';

class SelectShopContent extends StatelessWidget {
  const SelectShopContent({
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
        ShopTile(
          text: 'New Shop',
          onclick: () {},
        ),
        ShopTile(
          text: 'Old Shop',
          onclick: () {},
        ),
        ShopTile(
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
        'Select Shop',
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

class ShopTile extends StatelessWidget {
  final VoidCallback? onclick;
  final String text;

  const ShopTile({
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
        title: Text(
          text,
          style: const TextStyle(
            color: tasseTextBlack,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: tasseSelectIconBgColor,
          ),
          child: SvgPicture.asset(
            tasseSelectIconSvg,
            color: tasseSelectIconColor,
            height: 16,
            width: 16,
          ),
        ),
      ),
    );
  }
}
