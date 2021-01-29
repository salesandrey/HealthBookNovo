// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_emergency_contact_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AddEmergencyContactController = BindInject(
  (i) => AddEmergencyContactController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddEmergencyContactController
    on _AddEmergencyContactControllerBase, Store {
  final _$loadingAtom =
      Atom(name: '_AddEmergencyContactControllerBase.loading');

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

  final _$userIDAtom = Atom(name: '_AddEmergencyContactControllerBase.userID');

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

  final _$nameAtom = Atom(name: '_AddEmergencyContactControllerBase.name');

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

  final _$emailAtom = Atom(name: '_AddEmergencyContactControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$phoneAtom = Atom(name: '_AddEmergencyContactControllerBase.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$kinshipAtom =
      Atom(name: '_AddEmergencyContactControllerBase.kinship');

  @override
  String get kinship {
    _$kinshipAtom.reportRead();
    return super.kinship;
  }

  @override
  set kinship(String value) {
    _$kinshipAtom.reportWrite(value, super.kinship, () {
      super.kinship = value;
    });
  }

  final _$saveDataAsyncAction =
      AsyncAction('_AddEmergencyContactControllerBase.saveData');

  @override
  Future<void> saveData() {
    return _$saveDataAsyncAction.run(() => super.saveData());
  }

  final _$_AddEmergencyContactControllerBaseActionController =
      ActionController(name: '_AddEmergencyContactControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_AddEmergencyContactControllerBaseActionController
        .startAction(name: '_AddEmergencyContactControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_AddEmergencyContactControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void changeUserID(String value) {
    final _$actionInfo = _$_AddEmergencyContactControllerBaseActionController
        .startAction(name: '_AddEmergencyContactControllerBase.changeUserID');
    try {
      return super.changeUserID(value);
    } finally {
      _$_AddEmergencyContactControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void changeName(String value) {
    final _$actionInfo = _$_AddEmergencyContactControllerBaseActionController
        .startAction(name: '_AddEmergencyContactControllerBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$_AddEmergencyContactControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void changeEmail(String value) {
    final _$actionInfo = _$_AddEmergencyContactControllerBaseActionController
        .startAction(name: '_AddEmergencyContactControllerBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_AddEmergencyContactControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void changePhone(String value) {
    final _$actionInfo = _$_AddEmergencyContactControllerBaseActionController
        .startAction(name: '_AddEmergencyContactControllerBase.changePhone');
    try {
      return super.changePhone(value);
    } finally {
      _$_AddEmergencyContactControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void changeKinship(String value) {
    final _$actionInfo = _$_AddEmergencyContactControllerBaseActionController
        .startAction(name: '_AddEmergencyContactControllerBase.changeKinship');
    try {
      return super.changeKinship(value);
    } finally {
      _$_AddEmergencyContactControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
userID: ${userID},
name: ${name},
email: ${email},
phone: ${phone},
kinship: ${kinship}
    ''';
  }
}
