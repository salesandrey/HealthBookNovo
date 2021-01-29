import 'dart:async';

import 'package:HealthBook/app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    Timer(Duration(seconds: 5),(){controller.checkUserLogging();});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: ColorsApp.dark,
          child: Stack(alignment: Alignment.center,
            children: [
              Container(height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width),
              Container(
                width: MediaQuery.of(context).size.width*0.6,
                height: MediaQuery.of(context).size.height*0.4,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width *0.03,
                  top: -MediaQuery.of(context).size.height*0.05,
                  child: Container(
                      width: MediaQuery.of(context).size.width*0.25,
                      height: MediaQuery.of(context).size.height*0.20,
                      child: Image.asset("assets/images/ribbon2.png",))),
              Positioned(
                  right: -MediaQuery.of(context).size.width * 0.04,
                  bottom: -MediaQuery.of(context).size.height * 0.03,
                  child:Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      height: MediaQuery.of(context).size.height*0.2,
                      child: Image.asset("assets/images/heart.png")))

            ],
          ),
        ),
      ),
    );
  }
}
