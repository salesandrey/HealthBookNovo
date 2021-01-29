import 'package:flutter/material.dart';


class SnackMessage {

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void showSnack(BuildContext context, String message){
    final snackBar = SnackBar(
      content: Text(message,style: TextStyle(fontSize: 16,fontFamily: "Montserrat Medium")),
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }

}