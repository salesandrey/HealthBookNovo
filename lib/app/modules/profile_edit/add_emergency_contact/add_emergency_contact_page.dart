import 'package:HealthBook/app/modules/profile_edit/add_address/componentes/textfield_address_widget.dart';
import 'package:HealthBook/app/modules/profile_edit/add_emergency_contact/viewmodel/add_emergency_validator_viewmodel.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:brasil_fields/formatter/telefone_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'add_emergency_contact_controller.dart';

class AddEmergencyContactPage extends StatefulWidget {


  final String userID;

  const AddEmergencyContactPage({Key key, this.userID}) : super(key: key);

  @override
  _AddEmergencyContactPageState createState() =>
      _AddEmergencyContactPageState(userID: userID);
}

class _AddEmergencyContactPageState extends ModularState<AddEmergencyContactPage, AddEmergencyContactController> {


  final String userID;

  _AddEmergencyContactPageState({this.userID});

  @override
  void initState() {
    controller.changeUserID(userID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      return ModalProgressHUD(
        inAsyncCall: controller.loading,
        child: Scaffold(
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
              "Adicionar contato de Emergência",
              style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
            ),
            centerTitle: true,
          ),
          body: Builder(
            builder: (c) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 54),
                    TextFieldAddressWidget(
                        typeInput: TextInputType.text,
                        hintText: "Nome",imageIcon: "assets/images/round-person-24px@3x.png",onChanged: controller.changeName),
                    SizedBox(height: 20),
                    TextFieldAddressWidget(
                        typeInput: TextInputType.emailAddress,
                        hintText: "Email",imageIcon: "assets/images/icon_email.png",onChanged: controller.changeEmail),
                    SizedBox(height: 20),
                    TextFieldAddressWidget(
                      typeInput: TextInputType.number,
                        inputs: [
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter(),
                          LengthLimitingTextInputFormatter(15)],
                        hintText: "Telefone",imageIcon: "assets/images/icons/phone.png",onChanged: controller.changePhone),
                    SizedBox(height: 20),
                    TextFieldAddressWidget(
                        typeInput: TextInputType.text,
                        hintText: "Parentesco",imageIcon: "assets/images/icons/people.png",onChanged: controller.changeKinship),
                    SizedBox(height: 61),
                    Container(
                      width: 152,
                      height: 43,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(StadiumBorder()),
                          backgroundColor: MaterialStateProperty.all(Colors.black),
                        ),
                        onPressed: () async {

                          if(AddEmergencyValidatorViewModel().validatorFields(controller,c)) {
                            controller.changeLoading(true);
                            await controller.saveData();
                            controller.changeLoading(false);
                            Navigator.pop(c, true);
                          }
                        },
                        child: Text("SALVAR",style: TextStyle(color:Colors.white,fontFamily: "Montserrat SemiBold",fontSize: 13),),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });

  }
}
