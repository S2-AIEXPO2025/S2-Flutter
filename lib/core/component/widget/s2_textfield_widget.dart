import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum S2TextFieldType{
  none, password
}

class S2TextFieldWidget extends StatefulWidget {

  final S2TextFieldType type;
  final TextInputType textInputType;
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hint;

  final Function? onChanged;
  final Widget? suffix;
  final String? widgetTitle;

  const S2TextFieldWidget({
    super.key,
    this.type = S2TextFieldType.none,
    this.textInputType = TextInputType.text,
    this.suffix,
    this.widgetTitle,
    this.onChanged,
    required this.controller,
    required this.focusNode,
    required this.hint
  });

  @override
  State<S2TextFieldWidget> createState() => _S2TextFieldWidgetState();
}

class _S2TextFieldWidgetState extends State<S2TextFieldWidget> {

  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 48,
            decoration: BoxDecoration(
                color: Color(0xFFF9F9F9),
                borderRadius: BorderRadius.circular(5),
                border: widget.focusNode.hasFocus ? Border.all(
                    color: S2Color.pink,
                    width: 1
                ) : null
            ),
            child: TextFormField(
              style: S2TextStyle.medium12(color: S2Color.black),
              controller: widget.controller,
              focusNode: widget.focusNode,
              cursorColor: S2Color.pink,
              onChanged: (value) => widget.onChanged,
              keyboardType: widget.textInputType,
              obscureText: !_isClicked && widget.type == S2TextFieldType.password,
              obscuringCharacter: "⦁",
              decoration: InputDecoration(
                  hintText: widget.hint,
                  hintStyle: S2TextStyle.medium12(color: Color(0xFFB8B8B8)),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide.none
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  counterText: "",
                  suffix: widget.suffix,
                  suffixIcon: widget.type == S2TextFieldType.password ? GestureDetector(
                    onTap: (){
                      setState(() {
                        _isClicked ? _isClicked = false : _isClicked = true;
                      });},
                    child: Padding(padding: const EdgeInsets.all(15),
                      child: Image.asset(_isClicked ?
                      "assets/images/icons/core/eyes_open_icons.png" :
                      "assets/images/icons/core/eyes_close_icons.png"
                      ),
                    ),
                  ) : null
              ),
              onTap: (){
                FocusScope.of(context).hasFocus
                    ? FocusScope.of(context).unfocus()
                    : FocusScope.of(context).hasFocus;
              },
              onTapOutside: (event){
                FocusScope.of(context).unfocus();
              },
            ),
          ),
        )
      ],
    );
  }
}
