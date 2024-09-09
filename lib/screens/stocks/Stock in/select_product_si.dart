import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class SelectProductSI extends StatelessWidget {
  const SelectProductSI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Select Product',
            storeName: '',
          ),
          // search
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              children: [
                const Expanded(
                    child: SearchInput(placeholder: 'Quick search item')),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: tasseSelectLineColor,
                      width: 1,
                    ),
                  ),
                  child: const Icon(
                    Icons.document_scanner_outlined,
                    color: tasseTextGray,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ListView(
                shrinkWrap: true,
                children: const <Widget>[
                  _ProductsTab(
                    name: 'Headphone',
                    units: 10,
                    bp: 'UGX 200',
                  ),
                  _ProductsTab(
                    name: 'Headphone',
                    units: 10,
                    bp: 'UGX 200',
                  ),
                  _ProductsTab(
                    name: 'Headphone',
                    units: 10,
                    bp: 'UGX 200',
                  ),
                  _ProductsTab(
                    name: 'Headphone',
                    units: 10,
                    bp: 'UGX 200',
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ButtonNoIconWidget(text: 'Add New Product'),
          )
        ],
      ),
    );
  }
}

class _ProductsTab extends StatelessWidget {
  final String? image;
  final String name;

  final int units;
  final String bp;

  const _ProductsTab({
    // ignore: unused_element
    this.image,
    required this.name,
    required this.units,
    required this.bp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: tasseBoaderGrayColor,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // left
          Row(
            children: [
              // icon
              image == null
                  ? Container(
                      padding: const EdgeInsets.all(10),
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        color: tasseIconBgColorRed,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/svgs/prepic_svg.svg'),
                    )
                  : Container(
                      // padding: const EdgeInsets.all(10),
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: tasseIconBgColorRed,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image!),
                        ),
                      ),
                      // child: ,
                    ),
              // info
              const SizedBox(width: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: tasseTextGray,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      //units
                      const SizedBox(width: 4),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: units <= 0
                              ? tassePrimaryRed
                              : tasseSuccessGreenColor,
                        ),
                        child: Text(
                          units <= 9 ? '0$units' : units.toString(),
                          style: const TextStyle(
                            color: tassePrimaryWhite,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          // right
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // text here
              Text(
                'BP/=$bp',
                style: const TextStyle(
                  color: tasseTextGray,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
