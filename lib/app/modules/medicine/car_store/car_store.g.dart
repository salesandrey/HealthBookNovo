// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarStore on _CarStoreBase, Store {
  final _$carAtom = Atom(name: '_CarStoreBase.car');

  @override
  ObservableList<EstimateProductModel> get car {
    _$carAtom.reportRead();
    return super.car;
  }

  @override
  set car(ObservableList<EstimateProductModel> value) {
    _$carAtom.reportWrite(value, super.car, () {
      super.car = value;
    });
  }

  final _$_CarStoreBaseActionController =
      ActionController(name: '_CarStoreBase');

  @override
  void addMedicine(PatientMedicineModel medicine) {
    final _$actionInfo = _$_CarStoreBaseActionController.startAction(
        name: '_CarStoreBase.addMedicine');
    try {
      return super.addMedicine(medicine);
    } finally {
      _$_CarStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addDocument(DocumentModel document) {
    final _$actionInfo = _$_CarStoreBaseActionController.startAction(
        name: '_CarStoreBase.addDocument');
    try {
      return super.addDocument(document);
    } finally {
      _$_CarStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeProduct(EstimateProductModel model) {
    final _$actionInfo = _$_CarStoreBaseActionController.startAction(
        name: '_CarStoreBase.removeProduct');
    try {
      return super.removeProduct(model);
    } finally {
      _$_CarStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void cleanCar() {
    final _$actionInfo = _$_CarStoreBaseActionController.startAction(
        name: '_CarStoreBase.cleanCar');
    try {
      return super.cleanCar();
    } finally {
      _$_CarStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
car: ${car}
    ''';
  }
}
