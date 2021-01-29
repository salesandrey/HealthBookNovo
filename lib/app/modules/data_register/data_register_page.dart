import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'data_register_controller.dart';

class DataRegisterPage extends StatefulWidget {

  @override
  _DataRegisterPageState createState() => _DataRegisterPageState();
}

class _DataRegisterPageState extends ModularState<DataRegisterPage, DataRegisterController> {


  void initState() {
    controller.getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {

      if(controller.currentUser==null){
        return Scaffold(body: Center(
            child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)))
        );
      }

      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(flex: 1,),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("Bem Vindo",
                        style: TextStyle(fontSize: 21, color: ColorsApp.Kprimary,fontFamily: "Montserrat Bold")),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Text(controller.currentUser.name,
                        style: TextStyle(fontSize: 21, color: Colors.grey,fontFamily: "Montserrat Light"),),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.only(top: 15, bottom: 15),
                      child: Image.asset(
                        'assets/images/logo3.png',
                        fit: BoxFit.cover,
                        height: 120,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Para que a sua experiência com o Health Book seja completa, será necessário preencher alguns dados sobre sua saúde.",
                          style: TextStyle(
                            fontFamily: "Montserrat Medium",
                              fontSize: 16,
                              height: 1.5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 45,
                          width: 200,
                          decoration: BoxDecoration(
                            color: ColorsApp.Kprimary,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextButton(
                            style: ButtonStyle(visualDensity: VisualDensity.adaptivePlatformDensity,
                                shape: MaterialStateProperty.all(StadiumBorder())),
                            onPressed: () {
                              Modular.to.pushNamed("/RegisterData/RegisterInfo");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FittedBox(
                                  child: Text(
                                    "CADASTRO GERAL",
                                    style: TextStyle(fontFamily: "Montserrat SemiBold",color: Colors.white,fontSize: 13),
                                  ),
                                ),
                                SizedBox(width: 10),
                                FittedBox(child: Icon(Icons.arrow_forward_ios, color: Colors.white,size: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .width * 0.04,),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
