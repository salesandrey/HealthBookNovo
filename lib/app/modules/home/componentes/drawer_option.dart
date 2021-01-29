
import 'package:flutter/material.dart';

class DrawerOption extends StatelessWidget {

  final bool select;
  final String title;

  const DrawerOption({Key key, @required this.title, this.select}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: select? Color(0xFFB1F2B36): Color(0xFFFAFAFA),
      child: Row(
        children: [
          SizedBox(width: 10),
          Text(title,style: TextStyle(color:select?Colors.white:Colors.black,fontSize: 16,fontFamily: select?"Montserrat Bold" : "Montserrat Medium"),)
        ],
      ),
    );
  }
}
