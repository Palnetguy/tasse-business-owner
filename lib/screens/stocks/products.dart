// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/screens/stocks/add_stock.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';

import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar_with_prefix.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // header
          SecondaryAppBarWithPrefix(
            isXIcon: false,
            title: 'Products',
            storeName: '',
            prefix: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: tassePrimaryRed,
                border: Border.all(color: tassePrimaryWhite, width: 6),
              ),
              padding: const EdgeInsets.all(2),
              child: GestureDetector(
                onTap: () {
                  Get.bottomSheet(
                    // const _DownloadBottonSheet(),
                    const _DownloadBottonSheet(),
                  );
                },
                child: const Icon(
                  Icons.file_download_outlined,
                  size: 15,
                  color: tassePrimaryWhite,
                ),
              ),
            ),
          ),

          // quick search
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Expanded(
                        child: SearchInput(
                          placeholder: 'Quick search item',
                        ),
                      ),
                      InputSetFnBtn(
                        icon: Icons.filter_alt_outlined,
                        onClick: () {
                          Get.defaultDialog(
                            title: "",
                            titleStyle: const TextStyle(fontSize: 0),
                            titlePadding: const EdgeInsets.all(0),
                            contentPadding: const EdgeInsets.only(bottom: 0),
                            backgroundColor: Colors.transparent,
                            // this is the dialog in a nother file in forgort pass word folder
                            content: const _FilterDialog(),
                            barrierDismissible: false,
                          );
                        },
                      ),
                      const InputSetFnBtn(
                          icon: Icons.document_scanner_outlined),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // products
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.all(0),
                      children: const [
                        _ProductsTab(
                          name: 'Headphobe',
                          owner: 'By-Khairul',
                          units: 10,
                          bp: 'BP/=UGX 200',
                          sp: 'SP/=UGX 200',
                          // image: 'assets/images/test_product_im.png',
                        ),
                        _ProductsTab(
                          name: 'Headphobe',
                          owner: 'By-Khairul',
                          units: 10,
                          bp: 'BP/=UGX 200',
                          sp: 'SP/=UGX 200',
                          image: 'assets/images/test_product_im.png',
                        ),
                        _ProductsTab(
                          name: 'Headphobe',
                          owner: 'By-Khairul',
                          units: 10,
                          bp: 'BP/=UGX 200',
                          sp: 'SP/=UGX 200',
                          // image: 'assets/images/test_product_im.png',
                        ),
                        _ProductsTab(
                          name: 'Headphobe',
                          owner: 'By-Khairul',
                          units: 10,
                          bp: 'BP/=UGX 200',
                          sp: 'SP/=UGX 200',
                          // image: 'assets/images/test_product_im.png',
                        ),
                        _ProductsTab(
                          name: 'Headphobe',
                          owner: 'By-Khairul',
                          units: 00,
                          bp: 'BP/=UGX 200',
                          sp: 'SP/=UGX 200',
                          // image: 'assets/images/test_product_im.png',
                        ),
                      ],
                    ),
                  ),
                  ButtonNoIconWidget(
                    text: 'Add',
                    onclickFunction: () {
                      Get.to(const AddStock());
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterDialog extends StatelessWidget {
  const _FilterDialog();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        color: tassePrimaryWhite,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'All',
              style: TextStyle(
                color: tasseGray400Color,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Highest Stock Balance',
              style: TextStyle(
                color: tasseGray400Color,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Out of Stock',
              style: TextStyle(
                color: tasseGray400Color,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Running Low',
              style: TextStyle(
                color: tasseGray400Color,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Expiry Date',
              style: TextStyle(
                color: tasseGray400Color,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Highest Buying Price',
              style: TextStyle(
                color: tasseGray400Color,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Highest Selling Price',
              style: TextStyle(
                color: tasseGray400Color,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductsTab extends StatelessWidget {
  final String? image;
  final String name;
  final String owner;
  final int units;
  final String bp;
  final String sp;
  const _ProductsTab({
    this.image,
    required this.name,
    required this.owner,
    required this.units,
    required this.bp,
    required this.sp,
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
                  Text(
                    owner,
                    style: const TextStyle(
                      color: tasseTextGray,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
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
                bp,
                style: const TextStyle(
                  color: tasseTextGray,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                sp,
                style: const TextStyle(
                  color: tasseTextGray,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Uncategorized',
                style: TextStyle(
                  color: tasseTextGray,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _DownloadBottonSheet extends StatelessWidget {
  const _DownloadBottonSheet();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: tassePrimaryWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Choose What to Download',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: tasseTextGray,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1, color: tasseTextBlack),
                      ),
                      child: const Icon(
                        Icons.close_rounded,
                        size: 12,
                        color: tasseTextBlack,
                      ),
                    ),
                  ),
                ],
              ),
              // options
              const SizedBox(height: 16),
              const _DownloadTabItem(text: 'All'),
              const _DownloadTabItem(text: 'Out of stock'),
              const _DownloadTabItem(text: 'Rubbing low on stock'),
              const _DownloadTabItem(text: 'Expired'),
            ],
          ),
        ),
      ],
    );
  }
}

class _DownloadTabItem extends StatelessWidget {
  final String text;
  final VoidCallback? onclick;
  const _DownloadTabItem({
    required this.text,
    this.onclick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          text,
          style: const TextStyle(
            color: tasseTextGray,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
