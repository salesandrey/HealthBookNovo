import 'package:HealthBook/app/modules/profile_edit/add_address/viewmodel/address_validator_viewmodel.dart';
import 'package:brasil_fields/formatter/cep_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'add_address_controller.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'componentes/textfield_address_widget.dart';

class AddAddressPage extends StatefulWidget {

  final String userID;

  const AddAddressPage({Key key, this.userID}) : super(key: key);

  @override
  _AddAddressPageState createState() => _AddAddressPageState(userID: userID);
}

class _AddAddressPageState extends ModularState<AddAddressPage, AddAddressController> {


  final String userID;

  _AddAddressPageState({this.userID});

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
              "Gerenciar endereços de entrega",
              style: TextStyle(fontSize: 14, color: ColorsApp.KTertiaryColor),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Novo endereço",style: TextStyle(
                        color: ColorsApp.KBlackColor,
                        fontSize: 14,
                        fontFamily: "Montserrat SemiBold")),
                    SizedBox(height: 22),
                    TextFieldAddressWidget(hintText: "Endereço",imageIcon: "assets/images/icons/location.png",typeInput: TextInputType.streetAddress,
                    onChanged: controller.changeAddress,
                    ),
                    SizedBox(height: 10),
                    TextFieldAddressWidget(hintText: "CEP",
                      inputs: [
                        FilteringTextInputFormatter.digitsOnly,
                        CepInputFormatter()
                      ],
                      imageIcon: "assets/images/icons/cep.png",
                      typeInput: TextInputType.number,
                      onChanged: controller.changeCep,
                    ),

                    SizedBox(height: 10),
                    TextFieldAddressWidget(hintText: "Bairro",
                        imageIcon: "assets/images/icons/map.png",
                        typeInput: TextInputType.streetAddress,
                      onChanged: controller.changeNeighborhood,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                              width: 100,
                              child: TextFieldAddressWidget(
                                  hintText: "Cidade",
                                  imageIcon: "assets/images/icons/city.png",
                                onChanged: controller.changeCity,
                                typeInput: TextInputType.text,
                              )),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          flex: 2,
                          child: Container(
                              width: 100,
                              child: TextFieldAddressWidget(
                                  hintText: "UF",
                                  imageIcon: "assets/images/icons/brazil.png",
                                typeInput: TextInputType.text,
                                onChanged: controller.changeUF,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                              width: 100,
                              child: TextFieldAddressWidget(
                                  hintText: "Nº",
                                  imageIcon: "assets/images/icons/home.png",
                                typeInput: TextInputType.number,
                                onChanged: controller.changeNumberHouse,
                              )),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          flex: 7,
                          child: Container(
                              width: 100,
                              child: TextFieldAddressWidget(
                                  hintText: "Complemento",
                                  imageIcon: "assets/images/icons/location.png",
                                typeInput: TextInputType.streetAddress,
                                onChanged: controller.changeComplement,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(height: 61),
                    Builder(
                      builder:(c) => Center(
                        child: Container(
                          width: 152,
                          height: 43,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(StadiumBorder()),
                              backgroundColor: MaterialStateProperty.all(Colors.black),
                            ),
                            onPressed: () async {
                              if(AddressValidatorViewModel().validatorFields(controller, c)) {
                                controller.changeLoading(true);
                                await controller.saveData();
                                controller.changeLoading(false);
                                Navigator.pop(c, true);
                              }
                            },
                            child: Text("SALVAR",style: TextStyle(color:Colors.white,fontFamily: "Montserrat SemiBold",fontSize: 13),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
    });

  }
}
