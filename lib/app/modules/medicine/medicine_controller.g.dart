// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MedicineController on _MedicineControllerBase, Store {
  Computed<List<EstimateModel>> _$estimatePendingComputed;

  @override
  List<EstimateModel> get estimatePending => (_$estimatePendingComputed ??=
          Computed<List<EstimateModel>>(() => super.estimatePending,
              name: '_MedicineControllerBase.estimatePending'))
      .value;
  Computed<List<EstimateModel>> _$estimateDeliveredComputed;

  @override
  List<EstimateModel> get estimateDelivered => (_$estimateDeliveredComputed ??=
          Computed<List<EstimateModel>>(() => super.estimateDelivered,
              name: '_MedicineControllerBase.estimateDelivered'))
      .value;

  final _$selectSegmentedAtom =
      Atom(name: '_MedicineControllerBase.selectSegmented');

  @override
  int get selectSegmented {
    _$selectSegmentedAtom.reportRead();
    return super.selectSegmented;
  }

  @override
  set selectSegmented(int value) {
    _$selectSegmentedAtom.reportWrite(value, super.selectSegmented, () {
      super.selectSegmented = value;
    });
  }

  final _$currentUserAtom = Atom(name: '_MedicineControllerBase.currentUser');

  @override
  UserModel get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  @override
  set currentUser(UserModel value) {
    _$currentUserAtom.reportWrite(value, super.currentUser, () {
      super.currentUser = value;
    });
  }

  final _$estimatesAtom = Atom(name: '_MedicineControllerBase.estimates');

  @override
  ObservableList<EstimateModel> get estimates {
    _$estimatesAtom.reportRead();
    return super.estimates;
  }

  @override
  set estimates(ObservableList<EstimateModel> value) {
    _$estimatesAtom.reportWrite(value, super.estimates, () {
      super.estimates = value;
    });
  }

  final _$updateStateEstimateAsyncAction =
      AsyncAction('_MedicineControllerBase.updateStateEstimate');

  @override
  Future<void> updateStateEstimate(String estimateID) {
    return _$updateStateEstimateAsyncAction
        .run(() => super.updateStateEstimate(estimateID));
  }

  final _$getCurrentUserAsyncAction =
      AsyncAction('_MedicineControllerBase.getCurrentUser');

  @override
  Future<void> getCurrentUser() {
    return _$getCurrentUserAsyncAction.run(() => super.getCurrentUser());
  }

  final _$getEstimatesAsyncAction =
      AsyncAction('_MedicineControllerBase.getEstimates');

  @override
  Future<void> getEstimates() {
    return _$getEstimatesAsyncAction.run(() => super.getEstimates());
  }

  final _$_MedicineControllerBaseActionController =
      ActionController(name: '_MedicineControllerBase');

  @override
  void changeSegmented(int value) {
    final _$actionInfo = _$_MedicineControllerBaseActionController.startAction(
        name: '_MedicineControllerBase.changeSegmented');
    try {
      return super.changeSegmented(value);
    } finally {
      _$_MedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectSegmented: ${selectSegmented},
currentUser: ${currentUser},
estimates: ${estimates},
estimatePending: ${estimatePending},
estimateDelivered: ${estimateDelivered}
    ''';
  }
}
