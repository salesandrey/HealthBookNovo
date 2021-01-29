// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_health_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyHealthController on _MyHealthControllerBase, Store {
  Computed<List<DocumentModel>> _$filteredMedicineComputed;

  @override
  List<DocumentModel> get filteredMedicine => (_$filteredMedicineComputed ??=
          Computed<List<DocumentModel>>(() => super.filteredMedicine,
              name: '_MyHealthControllerBase.filteredMedicine'))
      .value;

  final _$currentUserAtom = Atom(name: '_MyHealthControllerBase.currentUser');

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

  final _$documentsAtom = Atom(name: '_MyHealthControllerBase.documents');

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

  final _$filterAtom = Atom(name: '_MyHealthControllerBase.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$getUserAsyncAction = AsyncAction('_MyHealthControllerBase.getUser');

  @override
  Future<void> getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  final _$getDocumentsAsyncAction =
      AsyncAction('_MyHealthControllerBase.getDocuments');

  @override
  Future<void> getDocuments() {
    return _$getDocumentsAsyncAction.run(() => super.getDocuments());
  }

  final _$removeDocumentAsyncAction =
      AsyncAction('_MyHealthControllerBase.removeDocument');

  @override
  Future<void> removeDocument(DocumentModel docs) {
    return _$removeDocumentAsyncAction.run(() => super.removeDocument(docs));
  }

  final _$_MyHealthControllerBaseActionController =
      ActionController(name: '_MyHealthControllerBase');

  @override
  void changeCurrentUser(UserModel model) {
    final _$actionInfo = _$_MyHealthControllerBaseActionController.startAction(
        name: '_MyHealthControllerBase.changeCurrentUser');
    try {
      return super.changeCurrentUser(model);
    } finally {
      _$_MyHealthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeFilter(String value) {
    final _$actionInfo = _$_MyHealthControllerBaseActionController.startAction(
        name: '_MyHealthControllerBase.changeFilter');
    try {
      return super.changeFilter(value);
    } finally {
      _$_MyHealthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser},
documents: ${documents},
filter: ${filter},
filteredMedicine: ${filteredMedicine}
    ''';
  }
}
