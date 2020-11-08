import 'package:flutter/material.dart';
import 'package:so_demo/colors.dart';
import 'package:so_demo/style_guide.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final double fieldheight, fieldwidth;
  final ValueChanged<String> onChanged;
  RoundedInputField({
    Key key,
    this.hintText,
    this.onChanged,
    this.fieldheight,
    this.fieldwidth,
  }) : super(key: key);

  String inputed_text = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fieldwidth,
      height: fieldheight,
      child: TextField(
        onChanged: (text) {
          // приравниваем текст на кнопке к возвращаемому полю
          inputed_text = text;
        },
        cursorColor: kPrimaryPinkColor1,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFFAFAFA),
          hintText: hintText,
          hintStyle: kMTextStyleGrey6,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Color(00000000)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: kPrimaryPurpleColor2),
          ),
        ),
      ),
    );
  }
}
