// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_health_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RegisterHealthController = BindInject(
  (i) => RegisterHealthController(
      currentUser: i<UserModel>(),
      pickPicture: i<IPickPicture>(),
      registerInfoController: i<RegisterInfoController>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterHealthController on _RegisterHealthControllerBase, Store {
  final _$currentUserAtom =
      Atom(name: '_RegisterHealthControllerBase.currentUser');

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

  final _$loadingAtom = Atom(name: '_RegisterHealthControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$bloodTypeAtom = Atom(name: '_RegisterHealthControllerBase.bloodType');

  @override
  String get bloodType {
    _$bloodTypeAtom.reportRead();
    return super.bloodType;
  }

  @override
  set bloodType(String value) {
    _$bloodTypeAtom.reportWrite(value, super.bloodType, () {
      super.bloodType = value;
    });
  }

  final _$diseasesAtom = Atom(name: '_RegisterHealthControllerBase.diseases');

  @override
  ObservableList<TileDiseaseWidget> get diseases {
    _$diseasesAtom.reportRead();
    return super.diseases;
  }

  @override
  set diseases(ObservableList<TileDiseaseWidget> value) {
    _$diseasesAtom.reportWrite(value, super.diseases, () {
      super.diseases = value;
    });
  }

  final _$connectSUSAtom =
      Atom(name: '_RegisterHealthControllerBase.connectSUS');

  @override
  bool get connectSUS {
    _$connectSUSAtom.reportRead();
    return super.connectSUS;
  }

  @override
  set connectSUS(bool value) {
    _$connectSUSAtom.reportWrite(value, super.connectSUS, () {
      super.connectSUS = value;
    });
  }

  final _$havePlaneAtom = Atom(name: '_RegisterHealthControllerBase.havePlane');

  @override
  bool get havePlane {
    _$havePlaneAtom.reportRead();
    return super.havePlane;
  }

  @override
  set havePlane(bool value) {
    _$havePlaneAtom.reportWrite(value, super.havePlane, () {
      super.havePlane = value;
    });
  }

  final _$operatorAtom = Atom(name: '_RegisterHealthControllerBase.operator');

  @override
  String get operator {
    _$operatorAtom.reportRead();
    return super.operator;
  }

  @override
  set operator(String value) {
    _$operatorAtom.reportWrite(value, super.operator, () {
      super.operator = value;
    });
  }

  final _$imagePlaneAtom =
      Atom(name: '_RegisterHealthControllerBase.imagePlane');

  @override
  File get imagePlane {
    _$imagePlaneAtom.reportRead();
    return super.imagePlane;
  }

  @override
  set imagePlane(File value) {
    _$imagePlaneAtom.reportWrite(value, super.imagePlane, () {
      super.imagePlane = value;
    });
  }

  final _$numberCardAtom =
      Atom(name: '_RegisterHealthControllerBase.numberCard');

  @override
  String get numberCard {
    _$numberCardAtom.reportRead();
    return super.numberCard;
  }

  @override
  set numberCard(String value) {
    _$numberCardAtom.reportWrite(value, super.numberCard, () {
      super.numberCard = value;
    });
  }

  final _$takePhotoAsyncAction =
      AsyncAction('_RegisterHealthControllerBase.takePhoto');

  @override
  Future<void> takePhoto() {
    return _$takePhotoAsyncAction.run(() => super.takePhoto());
  }

  final _$saveDataAsyncAction =
      AsyncAction('_RegisterHealthControllerBase.saveData');

  @override
  Future<void> saveData() {
    return _$saveDataAsyncAction.run(() => super.saveData());
  }

  final _$saveDiseaseAsyncAction =
      AsyncAction('_RegisterHealthControllerBase.saveDisease');

  @override
  Future<void> saveDisease() {
    return _$saveDiseaseAsyncAction.run(() => super.saveDisease());
  }

  final _$savePlaneHealthAsyncAction =
      AsyncAction('_RegisterHealthControllerBase.savePlaneHealth');

  @override
  Future<void> savePlaneHealth() {
    return _$savePlaneHealthAsyncAction.run(() => super.savePlaneHealth());
  }

  final _$_RegisterHealthControllerBaseActionController =
      ActionController(name: '_RegisterHealthControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_RegisterHealthControllerBaseActionController
        .startAction(name: '_RegisterHealthControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_RegisterHealthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeBloodType(String value) {
    final _$actionInfo = _$_RegisterHealthControllerBaseActionController
        .startAction(name: '_RegisterHealthControllerBase.changeBloodType');
    try {
      return super.changeBloodType(value);
    } finally {
      _$_RegisterHealthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void createDiseases() {
    final _$actionInfo = _$_RegisterHealthControllerBaseActionController
        .startAction(name: '_RegisterHealthControllerBase.createDiseases');
    try {
      return super.createDiseases();
    } finally {
      _$_RegisterHealthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNothing(int index) {
    final _$actionInfo = _$_RegisterHealthControllerBaseActionController
        .startAction(name: '_RegisterHealthControllerBase.changeNothing');
    try {
      return super.changeNothing(index);
    } finally {
      _$_RegisterHealthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeOthers(int index) {
    final _$actionInfo = _$_RegisterHealthControllerBaseActionController
        .startAction(name: '_RegisterHealthControllerBase.changeOthers');
    try {
      return super.changeOthers(index);
    } finally {
      _$_RegisterHealthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeConnectSUS(bool value) {
    final _$actionInfo = _$_RegisterHealthControllerBaseActionController
        .startAction(name: '_RegisterHealthControllerBase.changeConnectSUS');
    try {
      return super.changeConnectSUS(value);
    } finally {
      _$_RegisterHealthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeHavePlane(bool value) {
    final _$actionInfo = _$_RegisterHealthControllerBaseActionController
        .startAction(name: '_RegisterHealthControllerBase.changeHavePlane');
    try {
      return super.changeHavePlane(value);
    } finally {
      _$_RegisterHealthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeOperator(String value) {
    final _$actionInfo = _$_RegisterHealthControllerBaseActionController
        .startAction(name: '_RegisterHealthControllerBase.changeOperator');
    try {
      return super.changeOperator(value);
    } finally {
      _$_RegisterHealthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNumberCard(String value) {
    final _$actionInfo = _$_RegisterHealthControllerBaseActionController
        .startAction(name: '_RegisterHealthControllerBase.changeNumberCard');
    try {
      return super.changeNumberCard(value);
    } finally {
      _$_RegisterHealthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser},
loading: ${loading},
bloodType: ${bloodType},
diseases: ${diseases},
connectSUS: ${connectSUS},
havePlane: ${havePlane},
operator: ${operator},
imagePlane: ${imagePlane},
numberCard: ${numberCard}
    ''';
  }
}
