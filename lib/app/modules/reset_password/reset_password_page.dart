import 'package:HealthBook/app/modules/reset_password/components/reset_success_widget.dart';
import 'package:brasil_fields/formatter/cpf_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'reset_password_controller.dart';

class ResetPasswordPage extends StatefulWidget {
  final String title;
  const ResetPasswordPage({Key key, this.title = "ResetPassword"})
      : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState
    extends ModularState<ResetPasswordPage, ResetPasswordController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return Scaffold(
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

                  //  ForgotPass IN PUTS
                  Container(
                      color: Colors.white,
                      child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: FittedBox(
                                  child: Text("Recuperar \nSenha",
                                      style: TextStyle(
                                          fontFamily: "Montserrat SemiBold",
                                          fontSize: 42))),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              alignment: Alignment.center,
                              child: TextField(
                                onChanged: controller.changeEmail,
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
                                                    image: AssetImage('assets/images/icon_email.png'),
                                                  ))])),
                                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                                    errorText: controller.emailValidator? controller.emailFeedback:null,
                                    hintText: 'Email',
                                    hintStyle: TextStyle(height: 1.6),
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 15),
                              child: Text("Ou",style: TextStyle(fontSize: 22,color: Colors.grey),),
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: TextField(
                                  onChanged: controller.changeCPF,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(14),
                                    CpfInputFormatter()],
                                  keyboardType: TextInputType.emailAddress,
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
                                                ))])),
                                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                                      errorText: controller.cpfValidator? controller.cpfFeedback:null,
                                      hintText: 'CPF',
                                      hintStyle: TextStyle(height: 1.6),
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                                ))])),
                  SizedBox(height: 40,),
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
                            onPressed: () {
                              showModalBottomSheet(
                                  isDismissible: false,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                                  context: context,
                                  builder: (BuildContext context){
                                return ResetSuccessWidget();
                              });

                            },
                            color: Colors.black,
                            textColor: Colors.white,
                            child: Text("RECUPERAR"),
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
      );
    });
  }
}
