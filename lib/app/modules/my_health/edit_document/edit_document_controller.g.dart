// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_document_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $EditDocumentController = BindInject(
  (i) => EditDocumentController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EditDocumentController on _EditDocumentControllerBase, Store {
  final _$currentDocumentAtom =
      Atom(name: '_EditDocumentControllerBase.currentDocument');

  @override
  DocumentModel get currentDocument {
    _$currentDocumentAtom.reportRead();
    return super.currentDocument;
  }

  @override
  set currentDocument(DocumentModel value) {
    _$currentDocumentAtom.reportWrite(value, super.currentDocument, () {
      super.currentDocument = value;
    });
  }

  final _$nameDocumentAtom =
      Atom(name: '_EditDocumentControllerBase.nameDocument');

  @override
  String get nameDocument {
    _$nameDocumentAtom.reportRead();
    return super.nameDocument;
  }

  @override
  set nameDocument(String value) {
    _$nameDocumentAtom.reportWrite(value, super.nameDocument, () {
      super.nameDocument = value;
    });
  }

  final _$currentTypeAtom =
      Atom(name: '_EditDocumentControllerBase.currentType');

  @override
  String get currentType {
    _$currentTypeAtom.reportRead();
    return super.currentType;
  }

  @override
  set currentType(String value) {
    _$currentTypeAtom.reportWrite(value, super.currentType, () {
      super.currentType = value;
    });
  }

  final _$dateDocumentAtom =
      Atom(name: '_EditDocumentControllerBase.dateDocument');

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
      Atom(name: '_EditDocumentControllerBase.observations');

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

  final _$documentAtom = Atom(name: '_EditDocumentControllerBase.document');

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

  final _$documentURLAtom =
      Atom(name: '_EditDocumentControllerBase.documentURL');

  @override
  String get documentURL {
    _$documentURLAtom.reportRead();
    return super.documentURL;
  }

  @override
  set documentURL(String value) {
    _$documentURLAtom.reportWrite(value, super.documentURL, () {
      super.documentURL = value;
    });
  }

  final _$getDocumentAsyncAction =
      AsyncAction('_EditDocumentControllerBase.getDocument');

  @override
  Future<void> getDocument() {
    return _$getDocumentAsyncAction.run(() => super.getDocument());
  }

  final _$_EditDocumentControllerBaseActionController =
      ActionController(name: '_EditDocumentControllerBase');

  @override
  void changeNameDocument(String value) {
    final _$actionInfo = _$_EditDocumentControllerBaseActionController
        .startAction(name: '_EditDocumentControllerBase.changeNameDocument');
    try {
      return super.changeNameDocument(value);
    } finally {
      _$_EditDocumentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCurrentType(String value) {
    final _$actionInfo = _$_EditDocumentControllerBaseActionController
        .startAction(name: '_EditDocumentControllerBase.changeCurrentType');
    try {
      return super.changeCurrentType(value);
    } finally {
      _$_EditDocumentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDateDocument(String value) {
    final _$actionInfo = _$_EditDocumentControllerBaseActionController
        .startAction(name: '_EditDocumentControllerBase.changeDateDocument');
    try {
      return super.changeDateDocument(value);
    } finally {
      _$_EditDocumentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeObservations(String value) {
    final _$actionInfo = _$_EditDocumentControllerBaseActionController
        .startAction(name: '_EditDocumentControllerBase.changeObservations');
    try {
      return super.changeObservations(value);
    } finally {
      _$_EditDocumentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDocumentURL(String value) {
    final _$actionInfo = _$_EditDocumentControllerBaseActionController
        .startAction(name: '_EditDocumentControllerBase.changeDocumentURL');
    try {
      return super.changeDocumentURL(value);
    } finally {
      _$_EditDocumentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentDocument: ${currentDocument},
nameDocument: ${nameDocument},
currentType: ${currentType},
dateDocument: ${dateDocument},
observations: ${observations},
document: ${document},
documentURL: ${documentURL}
    ''';
  }
}
