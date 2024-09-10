import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';
import 'package:tesse_business_owner/controllers/expenses/expenses_controller.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class EditExpenses extends StatelessWidget {
  const EditExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    ExpensesController controller = Get.find();
    return Scaffold(
      body: Column(
        children: [
          // app bar
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Add Expenses',
            storeName: '',
          ),
          // firm
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              children: [
                //
                DropDownInputField(
                  options: const [],
                  lable: 'Category*',
                  hintText: 'Select category',
                  sufixWidget: const ButtonNoIconWidget(
                    text: 'Add',
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    margin: EdgeInsets.only(left: 16),
                    text_color: tassePrimaryRed,
                    border_color: tasseIconBgColorRed,
                    isFilled: false,
                  ),
                ),
                const SizedBox(height: 16),
                //
                Row(
                  children: [
                    Expanded(
                      child: InputField(lable: 'Amount*'),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: InputField(
                        lable: 'Date*',
                        hintText: 'eg. 2024=05-13',
                      ),
                    ),
                  ],
                ),
                //
                const InputField(
                  lable: 'Description',
                  minlines: 3,
                ),
                //
                Container(
                  padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: tasseBoaderGrayColor,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      // 1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Recurring Expense?',
                            style: TextStyle(
                              color: tasseTextGray,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          GetBuilder<ExpensesController>(
                            init: ExpensesController(),
                            initState: (_) {},
                            builder: (_) {
                              return SliderButtonCustWidget(
                                initialValue:
                                    controller.isRecurringExpensesOpen,
                                onChanged: (value) {
                                  controller.updateisRecurringExpenses();
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      // 2
                      GetBuilder<ExpensesController>(
                        init: ExpensesController(),
                        initState: (_) {},
                        builder: (_) {
                          return controller.isRecurringExpensesOpen
                              ? Column(
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Recurring Expense?',
                                          style: TextStyle(
                                            color: tasseTextGray,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Helps you manage this expense automatically on a schedule you choose',
                                          style: TextStyle(
                                            color: tasseTextGray,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 12),
                                    // 3
                                    DropDownInputField(
                                      options: const [
                                        'Date 13 of Every Month',
                                        'Every Day',
                                        'Every Monday-Friday',
                                        'Every Saturday-Sunday',
                                        'Every Start of Month',
                                        'Every End of Month',
                                      ],
                                      lable: 'Select Interval*',
                                      noDropIcon: true,
                                    )
                                  ],
                                )
                              : const SizedBox();
                        },
                      ),
                    ],
                  ),
                ),
                //
                const SizedBox(height: 27),
                const ButtonNoIconWidget(text: 'Update')
              ],
            ),
          )
        ],
      ),
    );
  }
}
