import 'package:flutter/material.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class EditPassword extends StatelessWidget {
  const EditPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Edit Password',
            storeName: '',
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40.5,
              right: 40.5,
              top: 40.5,
            ),
            child: ListView(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              children: const [
                InputField(
                  lable: 'New Password',
                  isPasswordFeild: true,
                ),
                InputField(
                  isPasswordFeild: true,
                  lable: 'Confirm Password',
                ),
                ButtonNoIconWidget(
                  text: 'Update Password',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
