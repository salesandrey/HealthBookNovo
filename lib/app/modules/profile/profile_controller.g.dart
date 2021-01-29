// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileController on _ProfileControllerBase, Store {
  final _$currentUserAtom = Atom(name: '_ProfileControllerBase.currentUser');

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

  final _$getUserAsyncAction = AsyncAction('_ProfileControllerBase.getUser');

  @override
  Future<void> getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  final _$_ProfileControllerBaseActionController =
      ActionController(name: '_ProfileControllerBase');

  @override
  void changeCurrentUser(UserModel model) {
    final _$actionInfo = _$_ProfileControllerBaseActionController.startAction(
        name: '_ProfileControllerBase.changeCurrentUser');
    try {
      return super.changeCurrentUser(model);
    } finally {
      _$_ProfileControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser}
    ''';
  }
}
