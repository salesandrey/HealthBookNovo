import 'package:HealthBook/app/modules/profile/register_familiar/componentes/textfield_register_family_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import '../../../style/theme.dart';
import 'register_familiar_controller.dart';

class RegisterFamiliarPage extends StatefulWidget {

  @override
  _RegisterFamiliarPageState createState() => _RegisterFamiliarPageState();
}

class _RegisterFamiliarPageState extends ModularState<RegisterFamiliarPage, RegisterFamiliarController> {


  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return ModalProgressHUD(inAsyncCall: controller.loading,
        child: Scaffold(
          backgroundColor: ColorsApp.KPrimaryColor,
          appBar: AppBar(
            elevation: 2,
            backgroundColor: ColorsApp.KPrimaryColor,
            leading: IconButton(
              onPressed: () {Navigator.of(context).pop();},
              icon: Icon(Icons.arrow_back, color: Color(0xff999999)),
            ),
            title: Text(
              "Cadastro de familiares",
              style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFieldRegisterFamilyWidget()
                ]
              ),
            ),
          ),
        ),
      );
    });
  }
}
