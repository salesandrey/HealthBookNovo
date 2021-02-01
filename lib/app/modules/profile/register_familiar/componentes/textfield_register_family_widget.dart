import 'package:flutter/material.dart';

import '../../../../style/theme.dart';

class TextFieldRegisterFamilyWidget  extends StatelessWidget {
  final String imageIcon;
  final String hintText;
  final Function onChanged;
  final TextEditingController controller;
  final dynamic mask;
  final TextInputType keyboard;

  const TextFieldRegisterFamilyWidget({Key key,
    this.imageIcon,
    this.hintText,
    this.onChanged, this.mask, this.keyboard, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: controller,
        autofocus: false,
        onChanged: onChanged,
        keyboardType: keyboard,
        inputFormatters: mask,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(color: ColorsApp.KTertiaryColor, fontSize: 14,fontFamily: "Montserrat Regular"),
        decoration: new InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.grey)),
          prefixIcon: Transform.scale(scale: 0.4,child: ImageIcon(AssetImage(imageIcon))),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText, hintStyle:
        TextStyle(fontSize: 12, color: ColorsApp.KTertiaryColor,fontFamily: "Montserrat Regular"),
        ),
      ),
    );
  }
}
