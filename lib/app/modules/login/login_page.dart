import 'package:HealthBook/app/modules/login/viewmodel/login_validate_viewmodel.dart';
import 'package:HealthBook/app/repositories/facebook_repository.dart';
import 'package:HealthBook/app/repositories/google_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {

  @override
  void initState() {
    controller.emailController.text = controller.email;
    controller.passwordController.text = controller.password;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer( builder: (_){
      return ModalProgressHUD(inAsyncCall: controller.loading,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
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
                              padding: const EdgeInsets.only(top: 20),
                              height: 170,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
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
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: FittedBox(
                                child: Text("Login",
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
                              controller: controller.emailController,
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
                                  errorText: controller.emailValidator?controller.emailFeedBack:null,
                                  hintStyle: TextStyle(height: 1.6),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            child: TextField(
                              controller: controller.passwordController,
                              keyboardType: TextInputType.text,
                              obscureText: controller.visibility ? false : true,
                              onChanged: controller.changePassword,
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
                                  suffixIcon: controller.visibility ?
                                  IconButton(onPressed: () {
                                    controller.changeVisibility(false);
                                  }, icon: Icon(Icons.visibility)) :
                                  IconButton(onPressed: () {
                                    controller.changeVisibility(true);
                                  }, icon: Icon(Icons.visibility_off)),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  hintText: 'Password',
                                  errorText: controller.passwordValidator?controller.passwordFeedBack:null,
                                  hintStyle: TextStyle(height: 1.6),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10)),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: InkWell(onTap: () {
                                    Modular.to.pushNamed("/ResetPassword");
                                  }, child: Text("Perdeu sua senha?")),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: controller.isConnect,
                                      onChanged: (value) {
                                        controller.changeIsConnect(value);
                                        setState(() {});
                                      },
                                    ),
                                    Text("Manter-se conectado"),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],
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
                              onPressed: () async {
                                LoginValidateViewModel().validateFields(controller);
                                if(!controller.emailValidator && !controller.passwordValidator){
                                  await controller.loginEmailPassword(context);
                                }
                                setState(() {});
                              },
                              color: Colors.black,
                              textColor: Colors.white,
                              child: Text("LOGIN"),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child:
                            InkWell(onTap: () {
                              Modular.to.pushNamed("/Register");
                              }, child: Text("Não tem uma conta? Cadastre-se",
                              style: TextStyle(fontSize: 12),)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(onTap: () {controller.loginGoogle(context);},
                            child: Container(
                              height: 50,
                              child: Image(
                                image: AssetImage('assets/images/google.png'),
                              ),
                            ),
                          ),
                          InkWell(onTap: () {
                            controller.loginFacebook(context);
                          },
                            child: Container(
                              height: 50,
                              child: Image(
                                image: AssetImage('assets/images/fb.png'),
                              ),
                            ),
                          ),
                          InkWell(onTap: (){controller.loginFingerPrint(context);},
                            child: Container(
                              height: 50,
                              child: Image(
                                image: AssetImage('assets/images/finger.png'),
                              ),
                            ),
                          ),
                          InkWell(onTap: (){controller.loginFaceID(context);},
                            child: Container(
                              height: 50,
                              child: Image(
                                image: AssetImage('assets/images/faceid.png'),
                              ),
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
