// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:tesse_business_owner/constants/constants.dart';

class LongButtonWithIconSvg extends StatelessWidget {
  final bool? isFilled;
  final String text;
  final String iconPath;

  final VoidCallback? onclickFunction;
  const LongButtonWithIconSvg({
    super.key,
    this.isFilled = true,
    required this.text,
    required this.iconPath,
    this.onclickFunction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onclickFunction!();
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(vertical: 10.5),
        decoration: BoxDecoration(
            color: isFilled! ? tassePrimaryRed : tassePrimaryWhite,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: tassePrimaryRed, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              height: 20,
              width: 20,
              // ignore: deprecated_member_use
              color: isFilled! ? tassePrimaryWhite : tassePrimaryRed,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                color: isFilled! ? tassePrimaryWhite : tassePrimaryRed,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LongButtonWithIconWidget extends StatelessWidget {
  final bool? isFilled;
  final String text;
  final Widget icon;

  final VoidCallback? onclickFunction;
  const LongButtonWithIconWidget({
    super.key,
    this.isFilled = true,
    required this.text,
    required this.icon,
    this.onclickFunction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onclickFunction!();
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(vertical: 10.5),
        decoration: BoxDecoration(
            color: isFilled! ? tassePrimaryRed : tassePrimaryWhite,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: tassePrimaryRed, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                color: isFilled! ? tassePrimaryWhite : tassePrimaryRed,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonNoIconWidget extends StatelessWidget {
  final bool? isFilled;
  final String text;
  final Color? border_color;
  final Color? text_color;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onclickFunction;
  const ButtonNoIconWidget({
    super.key,
    this.isFilled = true,
    required this.text,
    this.border_color,
    this.text_color,
    this.width,
    this.margin,
    this.padding,
    this.onclickFunction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onclickFunction!();
      },
      child: Container(
        width: width,
        margin: margin ?? const EdgeInsets.only(bottom: 20),
        padding: padding ?? const EdgeInsets.symmetric(vertical: 10.5),
        decoration: BoxDecoration(
            color: isFilled! ? (tassePrimaryRed) : tassePrimaryWhite,
            borderRadius: BorderRadius.circular(5),
            border:
                Border.all(color: (border_color ?? tassePrimaryRed), width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: isFilled!
                    ? tassePrimaryWhite
                    : (text_color ?? tassePrimaryRed),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonFlexibleNoIconWidget extends StatelessWidget {
  final bool? isFilled;
  final String text;
  final double? width;
  final VoidCallback? onclickFunction;

  const ButtonFlexibleNoIconWidget({
    super.key,
    this.isFilled = true,
    required this.text,
    this.width,
    this.onclickFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onclickFunction!();
        },
        child: Container(
          // width: width,
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.symmetric(vertical: 10.5),
          decoration: BoxDecoration(
            color: isFilled! ? tassePrimaryRed : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: isFilled! ? tassePrimaryRed : tasseSelectLineColor,
                width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: isFilled! ? tassePrimaryWhite : tasseTextBlack,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SliderButtonCustWidget extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const SliderButtonCustWidget({
    super.key,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  State<SliderButtonCustWidget> createState() => _MySliderButtonState();
}

class _MySliderButtonState extends State<SliderButtonCustWidget> {
  late bool _isOn;

  @override
  void initState() {
    super.initState();
    _isOn = widget.initialValue;
  }

  void _toggleSwitch() {
    setState(() {
      _isOn = !_isOn;
    });
    widget.onChanged(_isOn);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: _toggleSwitch,
          child: Container(
            padding: const EdgeInsets.all(2),
            width: 40.0,
            height: 20.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: _isOn ? tasseSuccessGreenColor : tasseGray100Color,
            ),
            child: Stack(
              children: [
                AnimatedAlign(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                  alignment:
                      _isOn ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    width: 16.0,
                    height: 16.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: tassePrimaryWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class InputSetFnBtn extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onClick;
  const InputSetFnBtn({
    super.key,
    required this.icon,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: tasseSelectLineColor, width: 1),
        ),
        child: Icon(
          icon,
          size: 20,
        ),
      ),
    );
  }
}
