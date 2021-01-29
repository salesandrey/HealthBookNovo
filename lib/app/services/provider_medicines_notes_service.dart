

import 'package:HealthBook/app/models/patient_medicine_model.dart';
import 'package:flutter/material.dart';

class ProviderMedicinesNotesService extends ChangeNotifier{

  List<PatientMedicineModel> medicines;

  void saveMedicines(List<PatientMedicineModel> values){
    medicines = values;
    notifyListeners();
  }
}