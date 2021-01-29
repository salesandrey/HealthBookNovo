// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_document_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RegisterDocumentController = BindInject(
  (i) => RegisterDocumentController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterDocumentController on _RegisterDocumentControllerBase, Store {
  final _$loadingAtom = Atom(name: '_RegisterDocumentControllerBase.loading');

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

  final _$idUserAtom = Atom(name: '_RegisterDocumentControllerBase.idUser');

  @override
  String get idUser {
    _$idUserAtom.reportRead();
    return super.idUser;
  }

  @override
  set idUser(String value) {
    _$idUserAtom.reportWrite(value, super.idUser, () {
      super.idUser = value;
    });
  }

  final _$nameAtom = Atom(name: '_RegisterDocumentControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$typeAtom = Atom(name: '_RegisterDocumentControllerBase.type');

  @override
  String get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(String value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  final _$dateDocumentAtom =
      Atom(name: '_RegisterDocumentControllerBase.dateDocument');

  @override
  String get dateDocument {
    _$dateDocumentAtom.reportRead();
    return super.dateDocument;
  }

  @override
  set dateDocument(String value) {
    _$dateDocumentAtom.reportWrite(value, super.dateDocument, () {
      super.dateDocument = value;
    });
  }

  final _$observationsAtom =
      Atom(name: '_RegisterDocumentControllerBase.observations');

  @override
  String get observations {
    _$observationsAtom.reportRead();
    return super.observations;
  }

  @override
  set observations(String value) {
    _$observationsAtom.reportWrite(value, super.observations, () {
      super.observations = value;
    });
  }

  final _$documentAtom = Atom(name: '_RegisterDocumentControllerBase.document');

  @override
  File get document {
    _$documentAtom.reportRead();
    return super.document;
  }

  @override
  set document(File value) {
    _$documentAtom.reportWrite(value, super.document, () {
      super.document = value;
    });
  }

  final _$pickFileAsyncAction =
      AsyncAction('_RegisterDocumentControllerBase.pickFile');

  @override
  Future<void> pickFile() {
    return _$pickFileAsyncAction.run(() => super.pickFile());
  }

  final _$saveDataAsyncAction =
      AsyncAction('_RegisterDocumentControllerBase.saveData');

  @override
  Future<void> saveData() {
    return _$saveDataAsyncAction.run(() => super.saveData());
  }

  final _$_RegisterDocumentControllerBaseActionController =
      ActionController(name: '_RegisterDocumentControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_RegisterDocumentControllerBaseActionController
        .startAction(name: '_RegisterDocumentControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_RegisterDocumentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeIdUser(String value) {
    final _$actionInfo = _$_RegisterDocumentControllerBaseActionController
        .startAction(name: '_RegisterDocumentControllerBase.changeIdUser');
    try {
      return super.changeIdUser(value);
    } finally {
      _$_RegisterDocumentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeName(String value) {
    final _$actionInfo = _$_RegisterDocumentControllerBaseActionController
        .startAction(name: '_RegisterDocumentControllerBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$_RegisterDocumentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeType(String value) {
    final _$actionInfo = _$_RegisterDocumentControllerBaseActionController
        .startAction(name: '_RegisterDocumentControllerBase.changeType');
    try {
      return super.changeType(value);
    } finally {
      _$_RegisterDocumentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDateDocument(String value) {
    final _$actionInfo =
        _$_RegisterDocumentControllerBaseActionController.startAction(
            name: '_RegisterDocumentControllerBase.changeDateDocument');
    try {
      return super.changeDateDocument(value);
    } finally {
      _$_RegisterDocumentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeObservations(String value) {
    final _$actionInfo =
        _$_RegisterDocumentControllerBaseActionController.startAction(
            name: '_RegisterDocumentControllerBase.changeObservations');
    try {
      return super.changeObservations(value);
    } finally {
      _$_RegisterDocumentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
idUser: ${idUser},
name: ${name},
type: ${type},
dateDocument: ${dateDocument},
observations: ${observations},
document: ${document}
    ''';
  }
}
