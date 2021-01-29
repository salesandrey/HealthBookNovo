import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {


  final Function addAndRemoveProduct;
  final Function viewDetails;
  final String title;
  final String description;
  final String date;
  final IconData icon;

  const ProductCardWidget({Key key,

    this.viewDetails,
    @required this.title,
    @required this.description,
    @required this.date, this.addAndRemoveProduct,
    @required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 143,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Color(0xFFFAFAFA)),
      child: ListTile(
        trailing: InkWell(
          onTap: addAndRemoveProduct,
          child: Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: ColorsApp.KBlackColor),
            ),
            child: Icon(
              icon,
              color: ColorsApp.KBlackColor,
            ),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12,horizontal: 15),
        title: Row(
          children: [
            VerticalDivider(thickness: 5,color: Colors.black,),
            SizedBox(width: 12,),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title,style: TextStyle(fontSize: 14,fontFamily: "Montserrat SemiBold",color: Colors.black)),
                Text(description,style: TextStyle(fontSize: 12,fontFamily: "Montserrat Regular",color: Color(0xFF858585))),
                Text(date,style: TextStyle(fontSize: 12,fontFamily: "Montserrat Regular",color: Color(0xFF363636))),
                SizedBox(height: 3),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                  ),
                  color: Colors.black,
                    child: Text("VER DETALHES",style: TextStyle(fontSize: 10,color: Colors.white,fontFamily: "Montserrat Bold"),),
                    onPressed: viewDetails)
              ],
            ),
          ],
        ),
      ));
  }
}
