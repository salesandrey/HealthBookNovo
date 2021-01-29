import 'package:flutter/material.dart';

class MedicineCardWidget extends StatelessWidget {

  final title;
  final hour;
  final Function viewMedicine;

  const MedicineCardWidget({Key key, this.title, this.hour, this.viewMedicine}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: viewMedicine,
      child: Container(
          margin: EdgeInsets.only(bottom: 15),
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Card(
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width:41,height:47,child: Image.asset('assets/images/pills_black_icon.png')),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                        child: Text(title, style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 14, color: Colors.black),)),
                    Text(hour,style: TextStyle(fontSize: 12,fontFamily: "Montserrat Medium",color: Colors.black),),
                  ],
                )
              ]))),
    );
  }
}
