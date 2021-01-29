// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$currentUserAtom = Atom(name: '_HomeControllerBase.currentUser');

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

  final _$medicinesAtom = Atom(name: '_HomeControllerBase.medicines');

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

  final _$pageControllerAtom = Atom(name: '_HomeControllerBase.pageController');

  @override
  PageController get pageController {
    _$pageControllerAtom.reportRead();
    return super.pageController;
  }

  @override
  set pageController(PageController value) {
    _$pageControllerAtom.reportWrite(value, super.pageController, () {
      super.pageController = value;
    });
  }

  final _$changeCurrentUserAsyncAction =
      AsyncAction('_HomeControllerBase.changeCurrentUser');

  @override
  Future<void> changeCurrentUser() {
    return _$changeCurrentUserAsyncAction.run(() => super.changeCurrentUser());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void changePage(int index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser},
medicines: ${medicines},
pageController: ${pageController}
    ''';
  }
}
