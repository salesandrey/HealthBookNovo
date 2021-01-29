import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'list_pet_controller.dart';

class ListPetPage extends StatefulWidget {

  @override
  _ListPetPageState createState() => _ListPetPageState();
}

class _ListPetPageState extends ModularState<ListPetPage, ListPetController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: ColorsApp.KPrimaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,false);
          },
          icon: Icon(Icons.arrow_back, color: Color(0xff999999)),
        ),
        title: Text(
          "Meus Pets",
          style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
