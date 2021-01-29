// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimate_details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EstimateDetailsController on _EstimateDetailsControllerBase, Store {
  final _$estimateIDAtom =
      Atom(name: '_EstimateDetailsControllerBase.estimateID');

  @override
  String get estimateID {
    _$estimateIDAtom.reportRead();
    return super.estimateID;
  }

  @override
  set estimateID(String value) {
    _$estimateIDAtom.reportWrite(value, super.estimateID, () {
      super.estimateID = value;
    });
  }

  final _$medicineControllerAtom =
      Atom(name: '_EstimateDetailsControllerBase.medicineController');

  @override
  MedicineController get medicineController {
    _$medicineControllerAtom.reportRead();
    return super.medicineController;
  }

  @override
  set medicineController(MedicineController value) {
    _$medicineControllerAtom.reportWrite(value, super.medicineController, () {
      super.medicineController = value;
    });
  }

  final _$userIDAtom = Atom(name: '_EstimateDetailsControllerBase.userID');

  @override
  String get userID {
    _$userIDAtom.reportRead();
    return super.userID;
  }

  @override
  set userID(String value) {
    _$userIDAtom.reportWrite(value, super.userID, () {
      super.userID = value;
    });
  }

  final _$pharmaciesEstimatesAtom =
      Atom(name: '_EstimateDetailsControllerBase.pharmaciesEstimates');

  @override
  ObservableList<PharmacyEstimateListModel> get pharmaciesEstimates {
    _$pharmaciesEstimatesAtom.reportRead();
    return super.pharmaciesEstimates;
  }

  @override
  set pharmaciesEstimates(ObservableList<PharmacyEstimateListModel> value) {
    _$pharmaciesEstimatesAtom.reportWrite(value, super.pharmaciesEstimates, () {
      super.pharmaciesEstimates = value;
    });
  }

  final _$getPharmaciesEstimatesAsyncAction =
      AsyncAction('_EstimateDetailsControllerBase.getPharmaciesEstimates');

  @override
  Future<void> getPharmaciesEstimates() {
    return _$getPharmaciesEstimatesAsyncAction
        .run(() => super.getPharmaciesEstimates());
  }

  final _$_EstimateDetailsControllerBaseActionController =
      ActionController(name: '_EstimateDetailsControllerBase');

  @override
  void changeEstimateID(String value) {
    final _$actionInfo = _$_EstimateDetailsControllerBaseActionController
        .startAction(name: '_EstimateDetailsControllerBase.changeEstimateID');
    try {
      return super.changeEstimateID(value);
    } finally {
      _$_EstimateDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
estimateID: ${estimateID},
medicineController: ${medicineController},
userID: ${userID},
pharmaciesEstimates: ${pharmaciesEstimates}
    ''';
  }
}
