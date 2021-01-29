import 'package:HealthBook/app/style/size_config.dart';
import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'first_access_controller.dart';

class FirstAccessPage extends StatefulWidget {

  @override
  _FirstAccessPageState createState() => _FirstAccessPageState();
}

class _FirstAccessPageState
    extends ModularState<FirstAccessPage, FirstAccessController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    controller.getTerms();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
        return Scaffold(
          body: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 35),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.06,),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: ColorsApp.dark,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: FlatButton(
                            splashColor: ColorsApp.gray,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            onPressed: () {
                              Modular.to.pushNamed('/Tutorial');
                            },
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/newuser.png',
                                  width: 25,
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  'SOU NOVO AQUI! CADASTRE-SE',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat Regular',
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorsApp.dark),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: FlatButton(
                            splashColor: ColorsApp.gray,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            onPressed: () {
                              if(controller.terms!=null && controller.terms) {
                                Modular.to.pushReplacementNamed("/Login");
                              }else{
                                Modular.to.pushReplacementNamed('/TermOfUse');
                              }
                            },
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/olduser.png',
                                  width: 25,
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  'ENTRAR',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat Regular',
                                    fontSize: 13,
                                    color: ColorsApp.dark,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/design3.png',fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
