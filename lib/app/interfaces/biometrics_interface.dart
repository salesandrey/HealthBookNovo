import 'package:flutter/material.dart';

abstract class IBiometrics{

  void checkBiometrics();
  Future<void> checkAvailableFingerPrint(BuildContext context);
  Future<void> checkAvailableFaceID(BuildContext context);
  void authWithBiometrics(BuildContext context,String type);
}