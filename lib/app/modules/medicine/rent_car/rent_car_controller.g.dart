// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rent_car_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RentCarController = BindInject(
  (i) => RentCarController(car: i<CarStore>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RentCarController on _RentCarControllerBase, Store {
  Computed<List<PatientMedicineModel>> _$filteredMedicinesComputed;

  @override
  List<PatientMedicineModel> get filteredMedicines =>
      (_$filteredMedicinesComputed ??= Computed<List<PatientMedicineModel>>(
              () => super.filteredMedicines,
              name: '_RentCarControllerBase.filteredMedicines'))
          .value;
  Computed<List<DocumentModel>> _$filteredDocumentsComputed;

  @override
  List<DocumentModel> get filteredDocuments => (_$filteredDocumentsComputed ??=
          Computed<List<DocumentModel>>(() => super.filteredDocuments,
              name: '_RentCarControllerBase.filteredDocuments'))
      .value;

  final _$currentUserAtom = Atom(name: '_RentCarControllerBase.currentUser');

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

  final _$selectSegmentedAtom =
      Atom(name: '_RentCarControllerBase.selectSegmented');

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

  final _$typeProductAtom = Atom(name: '_RentCarControllerBase.typeProduct');

  @override
  String get typeProduct {
    _$typeProductAtom.reportRead();
    return super.typeProduct;
  }

  @override
  set typeProduct(String value) {
    _$typeProductAtom.reportWrite(value, super.typeProduct, () {
      super.typeProduct = value;
    });
  }

  final _$filterSegment1Atom =
      Atom(name: '_RentCarControllerBase.filterSegment1');

  @override
  String get filterSegment1 {
    _$filterSegment1Atom.reportRead();
    return super.filterSegment1;
  }

  @override
  set filterSegment1(String value) {
    _$filterSegment1Atom.reportWrite(value, super.filterSegment1, () {
      super.filterSegment1 = value;
    });
  }

  final _$filterSegment2Atom =
      Atom(name: '_RentCarControllerBase.filterSegment2');

  @override
  String get filterSegment2 {
    _$filterSegment2Atom.reportRead();
    return super.filterSegment2;
  }

  @override
  set filterSegment2(String value) {
    _$filterSegment2Atom.reportWrite(value, super.filterSegment2, () {
      super.filterSegment2 = value;
    });
  }

  final _$medicinesAtom = Atom(name: '_RentCarControllerBase.medicines');

  @override
  ObservableList<PatientMedicineModel> get medicines {
    _$medicinesAtom.reportRead();
    return super.medicines;
  }

  @override
  set medicines(ObservableList<PatientMedicineModel> value) {
    _$medicinesAtom.reportWrite(value, super.medicines, () {
      super.medicines = value;
    });
  }

  final _$documentsAtom = Atom(name: '_RentCarControllerBase.documents');

  @override
  ObservableList<DocumentModel> get documents {
    _$documentsAtom.reportRead();
    return super.documents;
  }

  @override
  set documents(ObservableList<DocumentModel> value) {
    _$documentsAtom.reportWrite(value, super.documents, () {
      super.documents = value;
    });
  }

  final _$getMedicinesAsyncAction =
      AsyncAction('_RentCarControllerBase.getMedicines');

  @override
  Future<void> getMedicines() {
    return _$getMedicinesAsyncAction.run(() => super.getMedicines());
  }

  final _$getDocumentsAsyncAction =
      AsyncAction('_RentCarControllerBase.getDocuments');

  @override
  Future<void> getDocuments() {
    return _$getDocumentsAsyncAction.run(() => super.getDocuments());
  }

  final _$_RentCarControllerBaseActionController =
      ActionController(name: '_RentCarControllerBase');

  @override
  void addMedicineToCar(PatientMedicineModel model) {
    final _$actionInfo = _$_RentCarControllerBaseActionController.startAction(
        name: '_RentCarControllerBase.addMedicineToCar');
    try {
      return super.addMedicineToCar(model);
    } finally {
      _$_RentCarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addDocumentToCar(DocumentModel model) {
    final _$actionInfo = _$_RentCarControllerBaseActionController.startAction(
        name: '_RentCarControllerBase.addDocumentToCar');
    try {
      return super.addDocumentToCar(model);
    } finally {
      _$_RentCarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCurrentUser(UserModel user) {
    final _$actionInfo = _$_RentCarControllerBaseActionController.startAction(
        name: '_RentCarControllerBase.changeCurrentUser');
    try {
      return super.changeCurrentUser(user);
    } finally {
      _$_RentCarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSegmented(int value) {
    final _$actionInfo = _$_RentCarControllerBaseActionController.startAction(
        name: '_RentCarControllerBase.changeSegmented');
    try {
      return super.changeSegmented(value);
    } finally {
      _$_RentCarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTypeProduct(String value) {
    final _$actionInfo = _$_RentCarControllerBaseActionController.startAction(
        name: '_RentCarControllerBase.changeTypeProduct');
    try {
      return super.changeTypeProduct(value);
    } finally {
      _$_RentCarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeFilterSegment1(String value) {
    final _$actionInfo = _$_RentCarControllerBaseActionController.startAction(
        name: '_RentCarControllerBase.changeFilterSegment1');
    try {
      return super.changeFilterSegment1(value);
    } finally {
      _$_RentCarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeFilterSegment2(String value) {
    final _$actionInfo = _$_RentCarControllerBaseActionController.startAction(
        name: '_RentCarControllerBase.changeFilterSegment2');
    try {
      return super.changeFilterSegment2(value);
    } finally {
      _$_RentCarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser},
selectSegmented: ${selectSegmented},
typeProduct: ${typeProduct},
filterSegment1: ${filterSegment1},
filterSegment2: ${filterSegment2},
medicines: ${medicines},
documents: ${documents},
filteredMedicines: ${filteredMedicines},
filteredDocuments: ${filteredDocuments}
    ''';
  }
}
