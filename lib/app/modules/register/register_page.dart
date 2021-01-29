import 'package:HealthBook/app/modules/register/viewmodel/form_validator_viewmodel.dart';
import 'package:HealthBook/app/style/size_config.dart';
import 'package:brasil_fields/formatter/cpf_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'register_controller.dart';

class RegisterPage extends StatefulWidget {
  
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends ModularState<RegisterPage, RegisterController> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Observer(builder: (_){
      return ModalProgressHUD(inAsyncCall: controller.loading,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 220,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 27),
                              height: 170,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap:(){
                                      Modular.to.pop();
                                    },
                                    child: Container(
                                      child: Icon(Icons.arrow_back),
                                    ),
                                  ),
                                  Container(
                                    child: Image(
                                      image: AssetImage('assets/images/hb.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 165,
                                    child: Image(
                                      image: AssetImage('assets/images/ribbon.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:50.0),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: FittedBox(
                                  child: Text("Cadastre-se",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              alignment: Alignment.center,
                              child: TextField(
                                keyboardType: TextInputType.text,
                                onChanged: controller.changeName,
                                decoration: InputDecoration(
                                    prefixIcon: Container(
                                      width: 50,
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 18,
                                            child: Image(
                                              image: AssetImage('assets/images/round-person-24px@3x.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    hintText: 'Nome completo',
                                    errorText: controller.nameValidator? controller.nameFeedback:null,
                                    hintStyle: TextStyle(height: 1.6),
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              alignment: Alignment.center,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                onChanged: controller.changeEmail,
                                decoration: InputDecoration(
                                    prefixIcon: Container(
                                      width: 50,
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 18,
                                            child: Image(
                                              image: AssetImage('assets/images/icon_email.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    hintText: 'Email',
                                    errorText: controller.emailValidator? controller.emailFeedback:null,
                                    hintStyle: TextStyle(height: 1.6),
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              alignment: Alignment.center,
                              child: TextField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(14),
                                  CpfInputFormatter()],
                                keyboardType: TextInputType.number,
                                onChanged: controller.changeCPF,
                                decoration: InputDecoration(
                                    prefixIcon: Container(
                                      width: 50,
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 18,
                                            child: Image(
                                              image: AssetImage('assets/images/Icon awesome-id-card@3x.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    hintText: 'CPF',
                                    errorText: controller.cpfValidator? controller.cpfFeedback:null,
                                    hintStyle: TextStyle(height: 1.6),
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              alignment: Alignment.center,
                              child: TextField(
                                onChanged: controller.changePassword,
                                obscureText: true,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    prefixIcon: Container(
                                      width: 50,
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 18,
                                            child: Image(
                                              image: AssetImage('assets/images/Icon ionic-md-key@3x.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    hintText: 'Senha',
                                    errorText: controller.passwordValidator? controller.passwordFeedback:null,
                                    hintStyle: TextStyle(height: 1.6),
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 220,
                            height: 45,
                            child: RaisedButton(
                              shape: StadiumBorder(),
                              visualDensity: VisualDensity.adaptivePlatformDensity,
                              onPressed: () async {
                                FormValidatorViewModel().validateFields(controller);
                                if(!controller.emailValidator &&
                                    !controller.passwordValidator&&
                                    !controller.cpfValidator &&
                                    !controller.nameValidator){
                                await controller.registerData(context);
                                }
                              },
                              color: Colors.black,
                              textColor: Colors.white,
                              child: Text("CADASTRAR"),
                            ),
                          ),
                        ],
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
