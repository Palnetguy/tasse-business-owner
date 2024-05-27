import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';

import '../../widgets/secondary_app_bar_no_back.dart';

class Shops extends StatelessWidget {
  const Shops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBarNoBack(
            title: 'Shops',
            storeName: 'Electic shop',
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SearchInput(
              onChanged: (value) {},
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                children: const [
                  ShopTabModule(
                    shopName: 'New Shop',
                    location: 'Dhaka, Bangladadesh',
                    typeOfShop: 'Retail',
                    isDefault: true,
                  ),
                  ShopTabModule(
                    shopName: 'Electric shop',
                    location: 'Dhaka, Bangladadesh',
                    typeOfShop: 'Retail',
                    isDefault: false,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const LongButtonWithIconWidget(
              text: 'Add Shop',
              iconPath: tasseAddCircleSvg,
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}




class ShopTabModule extends StatelessWidget {
  final String shopName;
  final String location;
  final String typeOfShop;
  final bool isDefault;
  final Function()? onTap;

  const ShopTabModule({
    super.key,
    required this.shopName,
    required this.location,
    required this.typeOfShop,
    required this.isDefault,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: tasseBoaderGrayColor,
            width: 1.5,
          ),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            //more
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
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
                        const SizedBox(width: 8),
                        Text(
                          shopName,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: tasseGray400Color,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 16,
                          color: tasseNoInternetTextColor,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          location,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: tasseTabUnselectedColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 5,
                          ),
                          decoration: BoxDecoration(
                              color: isDefault
                                  ? tasseSuccessGreenColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(14)),
                          child: Text(
                            'Default',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: isDefault
                                  ? tassePrimaryWhite
                                  : Colors.transparent,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          typeOfShop,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: tasseGray400Color,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
