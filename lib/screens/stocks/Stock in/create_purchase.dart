import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/stock/stock_controller.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

final StocksController controller = Get.find<StocksController>();

class CreatePurchase extends StatelessWidget {
  const CreatePurchase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Create a Purchase',
            storeName: 'Electric shop',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: ListView(
                padding: const EdgeInsets.all(0),
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: DropDownInputField(
                          onChanged: (value) {
                            controller.updateSelectedProducts(value);
                          },
                          options: const [
                            'Headphone',
                            'Piglets',
                            'Ian Rush',
                            'Waaa Bro'
                          ],
                          lable: "Select products to stock",
                        ),
                      ),
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
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: DropDownInputField(
                          options: const [],
                          lable: "Select Supplier",
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: DropDownInputField(
                          options: const ['Cash', 'Credit'],
                          initialIndex: 0,
                          lable: "Select Select",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // stock

                  GetBuilder<StocksController>(
                    init: StocksController(),
                    initState: (_) {},
                    builder: (_) {
                      return Column(
                        children: controller.testProducts.map<Widget>(
                          (item) {
                            return Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: tasseInputPrimaryBgColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item['name']!,
                                            style: const TextStyle(
                                              color: tasseTextGray,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          const Text(
                                            '1 X UGX 200 = UGX 100 ',
                                            style: TextStyle(
                                              color: tasseGray400Color,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                            ),
                                          )
                                        ],
                                      ),
                                      // count
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.add_circle_outline_rounded,
                                            size: 20,
                                            color: tasseTextGray,
                                          ),
                                          SizedBox(width: 20),
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              color: tasseTextGray,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          Icon(
                                            Icons.remove_circle_outline_rounded,
                                            size: 20,
                                            color: tasseTextGray,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Change price',
                                      style: TextStyle(
                                        color: tassePrimaryRed,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        controller.deleteSelectedProducts();
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(6),
                                        decoration: const BoxDecoration(
                                          color: tasseIconBgColorRed,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.delete,
                                          color: tassePrimaryRed,
                                          size: 16,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            );
                          },
                        ).toList(),
                      );
                    },
                  ),

                  // btns
                  const SizedBox(height: 20),

                  GetBuilder<StocksController>(
                    init: StocksController(),
                    initState: (_) {},
                    builder: (_) {
                      return Column(
                        children: [
                          controller.testProducts.isEmpty
                              ? const LongButtonWithIconWidget(
                                  text: 'Purchase Items',
                                  icon: Icon(
                                    Icons.add_circle_outline_rounded,
                                    size: 20,
                                    color: tassePrimaryWhite,
                                  ),
                                )
                              : const ButtonNoIconWidget(
                                  text: 'Create Purchase',
                                )
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
