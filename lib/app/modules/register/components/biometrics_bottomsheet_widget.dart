import 'package:HealthBook/app/style/size_config.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import '../register_controller.dart';


class BiometicsBottomSheetWidget extends StatefulWidget {
  @override
  _BiometicsBottomSheetWidgetState createState() => _BiometicsBottomSheetWidgetState();
}

class _BiometicsBottomSheetWidgetState extends ModularState<BiometicsBottomSheetWidget,RegisterController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ModalProgressHUD(
        inAsyncCall: controller.loading,
      child: SingleChildScrollView(
        child: Container(height: MediaQuery.of(context).size.height *0.8,
            margin: EdgeInsets.symmetric(horizontal: 18),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 30,),
                  Text("Deseja cadastrar seu reconhecimento \nfacial ou biometria?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                    FontWeight.bold,
                    height: 1.5,),textAlign: TextAlign.center),
                  Flexible(flex: 2,fit: FlexFit.loose,
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 57),
                        child: Column(children: [
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(height: 80, width: 80, child: Image.asset('assets/images/thumb.PNG',)),
                                  Container(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(child: Text("Touch ID")),
                                        Radio(
                                          value: 1,
                                          groupValue: controller.selectOption==1?1:null,
                                          onChanged: (value){
                                            controller.changeSelectOption(1);
                                            setState(() {});
                                          },
                                          activeColor: Colors.blue,
                                          focusColor: Colors.green,
                                          autofocus: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(
                                        'assets/images/camera.PNG'),
                                  ),
                                  Row(
                                    children: [
                                      Text("Face ID"),
                                      Radio(
                                        value: 2,
                                        groupValue: controller.selectOption==2?2:null,
                                        onChanged: (value){
                                          controller.changeSelectOption(2);
                                          setState(() {});
                                        },
                                        activeColor: Colors.blue,)])])]),
                           Container(
                             margin: EdgeInsets.only(top: 30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: FlatButton(
                              onPressed: () {
                                if(controller.selectOption==1){
                                  controller.loginFingerPrint(context);
                                }else {
                                  controller.loginFaceID(context);
                                }
                              },
                              child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "SIM, QUERO CADASTRAR",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: "Montserrat SemiBold"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(),
                                color: Colors.black,
                                borderRadius:
                                BorderRadius.circular(
                                    30),
                              ),
                              child: FlatButton(
                                onPressed: ()
                                {
                                    controller.loginEmailPassword(context);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FittedBox(
                                      child: Text(
                                        "NÃO, OBRIGADO ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,fontFamily: "Montserrat SemiBold"),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ]))))])),
                  )])),
      ));
  }
}