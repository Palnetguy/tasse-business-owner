import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tesse_business_owner/constants/constants.dart';

class NointernetWidget extends StatelessWidget {
  const NointernetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 60.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                tasseNoInternetSvg,
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 24),
              const Text(
                'No internet! Please check your internet connection or try it agian',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: tasseNoInternetTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
