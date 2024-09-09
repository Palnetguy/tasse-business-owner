import 'package:flutter/material.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class AddBadStock extends StatelessWidget {
  const AddBadStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // app bar
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Add Bad Stock',
            storeName: 'Electric shop',
          ),
          // from
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 24,
              ),
              children: [
                DropDownInputField(options: [], lable: 'Select Product*'),
                const InputField(lable: 'Quantity*'),
                const InputField(
                  lable: 'Reason*',
                  minlines: 3,
                ),
                const ButtonNoIconWidget(text: 'Save')
              ],
            ),
          )
        ],
      ),
    );
  }
}
