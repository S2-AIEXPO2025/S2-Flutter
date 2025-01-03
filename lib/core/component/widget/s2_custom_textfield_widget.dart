import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

enum S2CustomTextFieldType {
  none,
  password,
  birth,
}

class CustomTextField extends StatefulWidget {
  final S2CustomTextFieldType type;
  final String label;
  final String hintText;
  final TextEditingController? controller;
  final Widget? suffix;
  final Function? onChanged;

  const CustomTextField({
    super.key,
    required this.label,
    this.type = S2CustomTextFieldType.none,
    required this.hintText,
    this.controller,
    this.onChanged,
    this.suffix,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isClicked = false;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  void _showDatePicker(BuildContext context) {
    DateTime initialDate = _controller.text.isNotEmpty
        ? DateTime.tryParse(_controller.text) ?? DateTime(2000, 1, 1)
        : DateTime(2000, 1, 1);

    showModalBottomSheet(
      context: context,
      builder: (_) {
        return SizedBox(
          height: 300,
          child: ScrollDatePicker(
            selectedDate: initialDate,
            locale: const Locale('ko'),
            onDateTimeChanged: (date) {
              setState(() {
                _controller.text =
                "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
              });
              widget.onChanged?.call(_controller.text);
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  widget.label,
                  style: S2TextStyle.medium15(color: S2Color.black),
                ),
                Text(
                  '*',
                  style: S2TextStyle.medium15(color: S2Color.error),
                ),
              ],
            ),
          ],
        ),
        TextField(
          controller: _controller,
          readOnly: widget.type == S2CustomTextFieldType.birth,
          cursorColor: S2Color.pink,
          onChanged: (value) => widget.onChanged?.call(value),
          onTap: widget.type == S2CustomTextFieldType.birth
              ? () => _showDatePicker(context)
              : null,
          obscureText:
          !_isClicked && widget.type == S2CustomTextFieldType.password,
          obscuringCharacter: "⦁",
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: S2TextStyle.medium13(color: const Color(0xFFDCDCDC)),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: S2Color.pink, width: 1.5),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            counterText: '',
            suffix: widget.suffix,
            suffixIcon: _buildSuffixIcon(),
          ),
        ),
      ],
    );
  }

  Widget? _buildSuffixIcon() {
    if (widget.type == S2CustomTextFieldType.password) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _isClicked = !_isClicked;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(
            _isClicked
                ? "assets/images/icons/sign_up/eyes_open_icons.svg"
                : "assets/images/icons/sign_up/eyes_close_icons.svg",
          ),
        ),
      );
    } else if (widget.type == S2CustomTextFieldType.birth) {
      return GestureDetector(
        onTap: () {
          _showDatePicker(context);
        },
        child: Image.asset(
          "assets/images/icons/sign_up/birth_icon.png",
        ),
      );
    }
    return null;
  }
}
