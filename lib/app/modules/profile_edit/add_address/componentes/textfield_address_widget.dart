import 'package:flutter/material.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/services.dart';

class TextFieldAddressWidget extends StatelessWidget {

  final String imageIcon;
  final String hintText;
  final List<TextInputFormatter> inputs;
  final TextInputType typeInput;
  final Function onChanged;

  const TextFieldAddressWidget({Key key,
    this.imageIcon,
    this.hintText,
    this.onChanged, this.inputs, this.typeInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        onChanged: onChanged,
        keyboardType: typeInput,
        textAlignVertical: TextAlignVertical.center,
        inputFormatters: inputs,
        style: TextStyle(color: ColorsApp.KTertiaryColor, fontSize: 14),
        decoration: new InputDecoration(
          prefixIcon: Transform.scale(scale: 0.4,child: ImageIcon(AssetImage(imageIcon))),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: hintText, hintStyle:
          TextStyle(fontSize: 12, color: ColorsApp.KTertiaryColor,fontFamily: "Montserrat Regular"),
        ),
      ),
    );
  }
}
