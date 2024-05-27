import 'package:flutter/material.dart';
import 'package:tesse_business_owner/widgets/buttons.dart';
import 'package:tesse_business_owner/widgets/inputs.dart';
import 'package:tesse_business_owner/widgets/secondary_app_bar.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecondaryAppBar(
            isXIcon: false,
            title: 'Edit Profile',
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
              children: [
                InputField(
                  lable: 'Name',
                  controller: TextEditingController(text: 'Khairul Islam'),
                ),
                InputField(
                  lable: 'Email',
                  controller:
                      TextEditingController(text: 'masabaian332@gmail.com'),
                ),
                InputField(
                  lable: 'Phone',
                  controller: TextEditingController(text: '0783367392'),
                ),
                const ButtonNoIconWidget(
                  text: 'Update Profile',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
