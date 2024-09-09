import 'package:flutter/material.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class ImportProducts extends StatelessWidget {
  const ImportProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SecondaryAppBar(
            isXIcon: false,
            title: "Import Products",
            storeName: "",
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 47.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Select Source',
                    style: TextStyle(
                      color: tasseTextGray,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16),
                  LongButtonWithIconSvg(
                    text: "From Excel FIle",
                    iconPath: 'assets/svgs/xl.svg',
                  ),
                  Text(
                    'Download sample excel sheet below and see how to arrange products to import ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: tasseTextGray,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
