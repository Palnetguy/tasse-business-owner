import 'package:flutter/material.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class EditSupplier extends StatelessWidget {
  const EditSupplier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // app bar
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Edit Supplier Details',
            storeName: 'Electric shop',
          ),

          // form
          Padding(
            padding: const EdgeInsets.only(left: 40.5, right: 40.5, top: 20),
            child: ListView(
              shrinkWrap: true,
              children: [
                const InputField(
                  lable: 'Supplier Name',
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
