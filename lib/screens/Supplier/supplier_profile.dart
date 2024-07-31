import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';

import '../../controllers/suppliers/suppliers_controller.dart';
import '../../widgets/header_profile_section.dart';

class SupplierProfile extends StatelessWidget {
  const SupplierProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderProfile(),

          // rander each section according to the buttons in header

          // pending set
          GetBuilder<SuppliersController>(
            init: SuppliersController(),
            initState: (_) {},
            builder: (controller) {
              return Expanded(
                child: Column(
                  children: [
                    controller.currentEntry == 0
                        ? const Expanded(
                            child: Center(
                              child: Text(
                                "No entries found (pending)",
                                style: TextStyle(
                                  color: tasseTextBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),

                    // invoice set
                    controller.currentEntry == 1
                        ? const Expanded(
                            child: Center(
                              child: Text(
                                "No entries found (invoice)",
                                style: TextStyle(
                                  color: tasseTextBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),

                    // return sect
                    controller.currentEntry == 2
                        ? const Expanded(
                            child: Center(
                              child: Text(
                                "No entries found (Returns)",
                                style: TextStyle(
                                  color: tasseTextBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
