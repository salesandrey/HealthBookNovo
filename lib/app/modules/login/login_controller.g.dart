// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $LoginController = BindInject(
  (i) => LoginController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$isConnectAtom = Atom(name: '_LoginControllerBase.isConnect');

  @override
  bool get isConnect {
    _$isConnectAtom.reportRead();
    return super.isConnect;
  }

  @override
  set isConnect(bool value) {
    _$isConnectAtom.reportWrite(value, super.isConnect, () {
      super.isConnect = value;
    });
  }

  final _$emailAtom = Atom(name: '_LoginControllerBase.email');

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

  final _$emailFeedBackAtom = Atom(name: '_LoginControllerBase.emailFeedBack');

  @override
  String get emailFeedBack {
    _$emailFeedBackAtom.reportRead();
    return super.emailFeedBack;
  }

  @override
  set emailFeedBack(String value) {
    _$emailFeedBackAtom.reportWrite(value, super.emailFeedBack, () {
      super.emailFeedBack = value;
    });
  }

  final _$emailValidatorAtom =
      Atom(name: '_LoginControllerBase.emailValidator');

  @override
  bool get emailValidator {
    _$emailValidatorAtom.reportRead();
    return super.emailValidator;
  }

  @override
  set emailValidator(bool value) {
    _$emailValidatorAtom.reportWrite(value, super.emailValidator, () {
      super.emailValidator = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginControllerBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$passwordFeedBackAtom =
      Atom(name: '_LoginControllerBase.passwordFeedBack');

  @override
  String get passwordFeedBack {
    _$passwordFeedBackAtom.reportRead();
    return super.passwordFeedBack;
  }

  @override
  set passwordFeedBack(String value) {
    _$passwordFeedBackAtom.reportWrite(value, super.passwordFeedBack, () {
      super.passwordFeedBack = value;
    });
  }

  final _$passwordValidatorAtom =
      Atom(name: '_LoginControllerBase.passwordValidator');

  @override
  bool get passwordValidator {
    _$passwordValidatorAtom.reportRead();
    return super.passwordValidator;
  }

  @override
  set passwordValidator(bool value) {
    _$passwordValidatorAtom.reportWrite(value, super.passwordValidator, () {
      super.passwordValidator = value;
    });
  }

  final _$visibilityAtom = Atom(name: '_LoginControllerBase.visibility');

  @override
  bool get visibility {
    _$visibilityAtom.reportRead();
    return super.visibility;
  }

  @override
  set visibility(bool value) {
    _$visibilityAtom.reportWrite(value, super.visibility, () {
      super.visibility = value;
    });
  }

  final _$loadingAtom = Atom(name: '_LoginControllerBase.loading');

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

  final _$loginFaceIDAsyncAction =
      AsyncAction('_LoginControllerBase.loginFaceID');

  @override
  Future<void> loginFaceID(BuildContext context) {
    return _$loginFaceIDAsyncAction.run(() => super.loginFaceID(context));
  }

  final _$loginFingerPrintAsyncAction =
      AsyncAction('_LoginControllerBase.loginFingerPrint');

  @override
  Future<void> loginFingerPrint(BuildContext context) {
    return _$loginFingerPrintAsyncAction
        .run(() => super.loginFingerPrint(context));
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  void changeIsConnect(bool value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changeIsConnect');
    try {
      return super.changeIsConnect(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmail(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changePassword');
    try {
      return super.changePassword(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeVisibility(bool value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changeVisibility');
    try {
      return super.changeVisibility(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateEmailFeedBack(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.updateEmailFeedBack');
    try {
      return super.updateEmailFeedBack(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmailValidator(bool value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changeEmailValidator');
    try {
      return super.changeEmailValidator(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updatePasswordFeedBack(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.updatePasswordFeedBack');
    try {
      return super.updatePasswordFeedBack(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordValidator(bool value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changePasswordValidator');
    try {
      return super.changePasswordValidator(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isConnect: ${isConnect},
email: ${email},
emailFeedBack: ${emailFeedBack},
emailValidator: ${emailValidator},
password: ${password},
passwordFeedBack: ${passwordFeedBack},
passwordValidator: ${passwordValidator},
visibility: ${visibility},
loading: ${loading}
    ''';
  }
}
