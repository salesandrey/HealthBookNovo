import 'package:flutter/material.dart';

class ListTileDrawerWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: true,
      autofocus: true,
      hoverColor: Colors.red,
      onTap: () {},
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        height: 40,
        child: VerticalDivider(thickness: 5,color: Colors.black,),
      ),
      title: Row(
        children: [
          SizedBox(width: 20,),
          Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
        ],
      ),

    );
  }
}
