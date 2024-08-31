// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tesse_business_owner/constants/constants.dart';

class MainHeaderWidget extends StatelessWidget {
  final bool? isLonger;
  const MainHeaderWidget({
    super.key,
    this.isLonger = false,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      child: Stack(
        alignment: const Alignment(0, 1),
        children: [
          Align(
            alignment: const Alignment(-1, -1),
            child: Container(
              width: double.maxFinite,
              height: isLonger! ? 294 : 256,
              color: tassePrimaryRed,
              child: Align(
                alignment:
                    isLonger! ? const Alignment(-1.5, -3) : const Alignment(-1.5, -5),
                // alignment: const Alignment(-1.5, -5),
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // back button
        ],
      ),
    );
  }
}
