import 'dart:io';

import 'package:HealthBook/app/interfaces/biometrics_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';


class AuthBiometricsService implements IBiometrics{

  LocalAuthentication authentication = LocalAuthentication();
  static bool authenticaded = false;


  void checkBiometrics() async{
    bool canCheckBiometrics;
    try{
      canCheckBiometrics = await authentication.canCheckBiometrics;
      print(canCheckBiometrics);
    }catch (e){
      print(e);
    }
  }


  Future<bool> authWithBiometrics(BuildContext context,String type) async{

    try{
      authenticaded = await authentication.authenticateWithBiometrics(
          localizedReason: "Verificação Biometrica - $type",
          useErrorDialogs:true,
          stickyAuth:false);
      return authenticaded;
    } on PlatformException catch(e) {
      print(e);
      return false;
    }
  }

  @override
  Future <bool> checkAvailableFaceID(BuildContext context) async {
    List<BiometricType> availableBiometrics =
    await authentication.getAvailableBiometrics();
    String type = 'Face ID';
    if (Platform.isIOS) {
      if (availableBiometrics.contains(BiometricType.face)) {
        return authWithBiometrics(context,type);
      }else{
        showDialog(context: context,builder: (context){
          return AlertDialog(title: Text("$type não disponível no dispositivo",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 12)));
        });
        return false;
      }
    }
    else{
      if (availableBiometrics.contains(BiometricType.face)) {
        return authWithBiometrics(context,type);
      }else{
        showDialog(context: context,builder: (context){
          return AlertDialog(title: Text("$type não disponível no dispositivo",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 12)));
        });
        return false;
      }
    }
  }

  @override
  Future<bool> checkAvailableFingerPrint(BuildContext context) async {
    List<BiometricType> availableBiometrics = await authentication.getAvailableBiometrics();
    String type = 'FingerPrint';
    if (Platform.isIOS) {
      if (availableBiometrics.contains(BiometricType.fingerprint)) {
        return authWithBiometrics(context,type);
      }else{
        showDialog(context: context,builder: (context){
          return AlertDialog(title: Text("$type não disponível no dispositivo",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 12)));
        });
        return false;
      }
    }
    else{
      if(availableBiometrics.contains(BiometricType.fingerprint)) {
        return authWithBiometrics(context,type);
      }else{
        showDialog(context: context,builder: (context){
          return AlertDialog(title: Text("$type não disponível no dispositivo",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 12)));
        });
        return false;
      }
    }
  }

}