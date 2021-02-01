import 'package:flutter/material.dart';




class AddFamiliarButtonWidget extends StatelessWidget {

  final Function navigation;

  const AddFamiliarButtonWidget({Key key, this.navigation}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: navigation,
          child: Padding(
            padding: const EdgeInsets.only(right: 8,bottom: 16,top: 16),
            child: Container(
              height: 50, width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffFFCF3B),
              ),
              child: Icon(Icons.add,size: 30,),
            ))),
        Text("ADICIONAR FAMILIAR",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: "Montserrat SemiBold"))
      ],
    );
  }
}
