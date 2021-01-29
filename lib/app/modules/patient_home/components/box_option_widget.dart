import 'package:flutter/material.dart';

class BoxOptionWidget extends StatelessWidget {

  final img;
  final text;
  final color;
  final textColor;
  final Function navigator;

  const BoxOptionWidget({Key key, this.img, this.text, this.color, this.textColor, this.navigator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: navigator,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              height: 100,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 70,width:50,child: Image.asset(img)),
                  SizedBox(width: 10),
                  Flexible(
                      child: Text(text,
                        style: TextStyle(color: textColor,fontFamily: "Montserrat Bold",fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}