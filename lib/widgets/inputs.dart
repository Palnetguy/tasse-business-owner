// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tesse_business_owner/constants/constants.dart';

class InputField extends StatelessWidget {
  final Function(String)? onChanged;
  final String lable;
  final bool? isPasswordFeild;
  final bool? isReadOnly;
  final String? hintText;
  final int? minlines;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? preffixIcon;

  const InputField({
    super.key,
    this.onChanged,
    required this.lable,
    this.isPasswordFeild = false,
    this.isReadOnly = false,
    this.hintText,
    this.minlines = 1,
    this.controller,
    this.suffixIcon,
    this.preffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: const TextStyle(
            color: tasseTextBlack,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            // fontFamily: 'Inter',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // input
        TextField(
          readOnly: isReadOnly!,
          controller: controller,
          // maxLength: 100,
          minLines: isPasswordFeild! ? 1 : minlines,
          maxLines: isPasswordFeild! ? 1 : 10,
          obscureText: isPasswordFeild!,
          onChanged: (value) {
            onChanged!(value);
          },
          cursorColor: tasseTextGray,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Inter',
          ),
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: preffixIcon,
            hintStyle: const TextStyle(
              color: tasseInputHintTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            hintText: hintText,
            filled: true,
            fillColor: tasseInputPrimaryBgColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class InputFieldSmall extends StatelessWidget {
  final Function(String)? onChanged;
  final String lable;
  final bool? isPasswordFeild;
  final bool? isReadOnly;
  final String? hintText;
  final int? minlines;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? preffixIcon;

  const InputFieldSmall({
    super.key,
    this.onChanged,
    required this.lable,
    this.isPasswordFeild = false,
    this.isReadOnly = false,
    this.hintText,
    this.minlines = 1,
    this.controller,
    this.suffixIcon,
    this.preffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: const TextStyle(
            color: tasseTextBlack,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            // fontFamily: 'Inter',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // input
        Container(
          height: 32,
          child: TextField(
            readOnly: isReadOnly!,
            controller: controller,
            // maxLength: 100,
            minLines: isPasswordFeild! ? 1 : minlines,
            maxLines: isPasswordFeild! ? 1 : 10,
            obscureText: isPasswordFeild!,
            onChanged: (value) {
              onChanged!(value);
            },
            cursorColor: tasseTextGray,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'Inter',
            ),

            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              prefixIcon: preffixIcon,
              hintStyle: const TextStyle(
                color: tasseInputHintTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              hintText: hintText,
              filled: true,
              fillColor: Colors.transparent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                  color: tasseSelectLineColor,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                  color: tasseSelectLineColor,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                  color: tasseSelectLineColor,
                  width: 1,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 6,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class InputFieldFlexible extends StatelessWidget {
  final Function(String)? onChanged;
  final String lable;
  final bool? isPasswordFeild;
  final bool? isReadOnly;
  final String? hintText;
  final int? minlines;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? preffixIcon;

  const InputFieldFlexible({
    super.key,
    this.onChanged,
    required this.lable,
    this.isPasswordFeild = false,
    this.isReadOnly = false,
    this.hintText,
    this.minlines = 1,
    this.controller,
    this.suffixIcon,
    this.preffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lable,
            style: const TextStyle(
              color: tasseTextBlack,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              // fontFamily: 'Inter',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // input
          TextField(
            readOnly: isReadOnly!,
            controller: controller,
            // maxLength: 100,
            minLines: isPasswordFeild! ? 1 : minlines,
            maxLines: isPasswordFeild! ? 1 : 10,
            obscureText: isPasswordFeild!,
            onChanged: (value) {
              onChanged!(value);
            },
            cursorColor: tasseTextGray,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'Inter',
            ),
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              prefixIcon: preffixIcon,
              hintStyle: const TextStyle(
                color: tasseInputHintTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              hintText: hintText,
              filled: true,
              fillColor: tasseInputPrimaryBgColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class InputFieldWithDropDown extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String lable;
  final bool? isPasswordFeild;
  final String? hintText;
  const InputFieldWithDropDown({
    super.key,
    this.controller,
    this.onChanged,
    required this.lable,
    this.isPasswordFeild = false,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lable,
            style: const TextStyle(
              color: tasseTextBlack,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              // fontFamily: 'Inter',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // input
          TextField(
            obscureText: isPasswordFeild!,
            onChanged: (value) {
              onChanged!(value);
            },
            cursorColor: tasseTextGray,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'Inter',
            ),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 16,
                  color: tasseTextBlack,
                ),
              ),
              hintStyle: const TextStyle(
                color: tasseInputHintTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              hintText: hintText,
              filled: true,
              fillColor: tasseInputPrimaryBgColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class DropDownInputField extends StatefulWidget {
  final String? hintText;
  final List<String> options;
  final ValueChanged<String>? onChanged;
  final String lable;
  final int? initialIndex;
  TextEditingController? controller;
  final Widget? sufixWidget;
  final bool? noDropIcon;

  DropDownInputField({
    super.key,
    this.hintText,
    required this.options,
    this.onChanged,
    required this.lable,
    this.initialIndex,
    this.controller,
    this.sufixWidget,
    this.noDropIcon,
  });

  @override
  State<DropDownInputField> createState() => _DropDownInputFieldState();
}

class _DropDownInputFieldState extends State<DropDownInputField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.initialIndex != null &&
              widget.initialIndex! >= 0 &&
              widget.initialIndex! < widget.options.length
          ? widget.options[widget.initialIndex!]
          : '',
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          titlePadding: const EdgeInsets.all(0),
          contentPadding: const EdgeInsets.all(0),
          content: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.options.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _controller.text = widget.options[index];
                    });
                    if (widget.onChanged != null) {
                      widget.onChanged!(widget.options[index]);
                    }
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      widget.options[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    widget.controller = _controller;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.lable,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: tasseBlackColor,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                readOnly: true,
                onTap: () {
                  _showOptionsDialog(context);
                },
                decoration: InputDecoration(
                  suffixIcon:
                      widget.noDropIcon == null || widget.noDropIcon == false
                          ? const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 16,
                              color: tasseTextBlack,
                            )
                          : const SizedBox(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  hintStyle: const TextStyle(
                    color: tasseInputHintTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  hintText: widget.hintText,
                  filled: true,
                  fillColor: tasseInputPrimaryBgColor,
                ),
              ),
            ),
            widget.sufixWidget == null ? const SizedBox() : widget.sufixWidget!,
          ],
        ),
      ],
    );
  }
}

class SearchInput extends StatelessWidget {
  final Function(String value)? onChanged;
  final String? placeholder;
  const SearchInput({
    super.key,
    this.onChanged,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      cursorColor: tasseTextGray,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      ),
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          size: 15 + 15 / 2,
          color: tasseTabUnselectedColor,
        ),
        hintStyle: const TextStyle(
          color: tasseInputHintTextColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        hintText: placeholder ?? 'Search shop',
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          // borderSide: BorderSide.none,
          borderSide: const BorderSide(
            color: tasseBoaderGrayColor,
            width: 1.5,
          ),
        ),
        enabled: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 0,
        ),
      ),
    );
  }
}
