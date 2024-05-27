import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/customers/customers_controller.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class AddCustomer extends StatelessWidget {
  const AddCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    CustomersController controller = Get.find();

    return Scaffold(
      body: Column(
        children: [
          // app bar
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Add Customer',
            storeName: 'Electric shop',
          ),

          // form
          Padding(
            padding: const EdgeInsets.only(left: 40.5, right: 40.5, top: 20),
            child: ListView(
              shrinkWrap: true,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Anonymous customer',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tasseTextBlack,
                      ),
                    ),
                    SliderButtonCustWidget(
                      initialValue: controller.isAnonymusCustomer,
                      onChanged: (bool value) {
                        controller.updateisAnonymusCustomer(value);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                GetBuilder<CustomersController>(
                  init: CustomersController(),
                  initState: (_) {},
                  builder: (_) {
                    return controller.isAnonymusCustomer
                        ? Column(
                            children: [
                              const InputField(
                                lable: 'Receipt',
                                hintText: '134423',
                              ),
                              ButtonNoIconWidget(
                                text: 'Save',
                                onclickFunction: () {},
                              ),
                            ],
                          )
                        : !controller.isAnonymusCustomer
                            ? Column(
                                children: [
                                  const InputField(
                                    lable: 'Customer Name',
                                    hintText: 'e.g.Ian Rush',
                                  ),
                                  const InputField(
                                    lable: 'Phone',
                                    hintText: 'e.g.07xxxxxxxx',
                                  ),
                                  const InputField(
                                    lable: 'Email',
                                    hintText: 'e.g name@gmail.com',
                                  ),
                                  const InputField(
                                    lable: 'Address',
                                    minlines: 5,
                                    hintText: 'e.g New Street, Uganda',
                                  ),
                                  ButtonNoIconWidget(
                                    text: 'Save',
                                    onclickFunction: () {},
                                  ),
                                ],
                              )
                            : const SizedBox(
                                height: 1,
                              );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
