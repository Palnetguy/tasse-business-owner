import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesse_business_owner/constants/constants.dart';

import '../../controllers/register/businesss_owner_register_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the controller here, it will start the timer in its onInit method
    final BusinessOwnerRegisterController controller =
        Get.find<BusinessOwnerRegisterController>();
    return Scaffold(
      body: Container(
        color: tassePrimaryRed,
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(-1, -1),
              child: ClipPath(
                child: Container(
                  width: 438,
                  height: 438 / 2,
                  color: tassePrimaryRed,
                  child: Align(
                    alignment: const Alignment(-1.5, -50),
                    child: SizedBox(
                      height: 216,
                      width: 250,
                      child: Stack(
                        children: [
                          // first cir
                          Align(
                            alignment: const Alignment(-1, 1),
                            child: Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: tassePrimaryWhite.withOpacity(0.1),
                                  width: 5,
                                ),
                                borderRadius: BorderRadius.circular(200),
                              ),
                            ),
                          ),
                          // second cir
                          Align(
                            alignment: const Alignment(1, -1),
                            child: Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: tassePrimaryWhite.withOpacity(0.1),
                                  width: 5,
                                ),
                                borderRadius: BorderRadius.circular(200),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // splash logo
            Align(
              alignment: const Alignment(0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: SizedBox(
                  width: 216,
                  height: 216,
                  child: Image.asset('assets/images/logo.jpeg'),
                ),
              ),
            ),

            Align(
              alignment: const Alignment(0, 1),
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  'Developed by TAK Kinship Devs',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: tassePrimaryWhite,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
