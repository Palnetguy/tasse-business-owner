import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/constants/constants.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: (170 / 2) + (430 / 2),
      child: Stack(
        alignment: const Alignment(0, 1),
        children: [
          Align(
            alignment: const Alignment(-1, -1),
            child: ClipPath(
              clipper: MainHalfCircleClipper(),
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // image
          Align(
            alignment: const Alignment(0, 1),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  // color: Colors.green,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset(
                  'assets/images/logo.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // back button
          Align(
            alignment: const Alignment(-.9, -.4),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                width: 78,
                height: 32,
                decoration: BoxDecoration(
                  color: tassePrimaryWhite,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 18,
                      color: tassePrimaryRed,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: tassePrimaryRed,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainHalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4999833, size.height * -2.2256400);
    path_0.cubicTo(
        size.width * 0.7717000,
        size.height * -2.2256400,
        size.width * 1.1791333,
        size.height * -1.7739600,
        size.width * 1.1791333,
        size.height * -0.6127200);
    path_0.cubicTo(
        size.width * 1.1791333,
        size.height * 0.0323200,
        size.width * 0.9753833,
        size.height,
        size.width * 0.4999833,
        size.height);
    path_0.cubicTo(
        size.width * 0.2283667,
        size.height,
        size.width * -0.1791167,
        size.height * 0.5162800,
        size.width * -0.1791167,
        size.height * -0.6127200);
    path_0.cubicTo(
        size.width * -0.1791167,
        size.height * -1.2579600,
        size.width * 0.0246000,
        size.height * -2.2256400,
        size.width * 0.4999833,
        size.height * -2.2256400);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
