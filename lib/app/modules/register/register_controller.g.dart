// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RegisterController = BindInject(
  (i) => RegisterController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterControllerBase, Store {
  final _$loadingAtom = Atom(name: '_RegisterControllerBase.loading');

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

  final _$selectOptionAtom = Atom(name: '_RegisterControllerBase.selectOption');

  @override
  int get selectOption {
    _$selectOptionAtom.reportRead();
    return super.selectOption;
  }

  @override
  set selectOption(int value) {
    _$selectOptionAtom.reportWrite(value, super.selectOption, () {
      super.selectOption = value;
    });
  }

  final _$nameAtom = Atom(name: '_RegisterControllerBase.name');

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

  final _$nameFeedbackAtom = Atom(name: '_RegisterControllerBase.nameFeedback');

  @override
  String get nameFeedback {
    _$nameFeedbackAtom.reportRead();
    return super.nameFeedback;
  }

  @override
  set nameFeedback(String value) {
    _$nameFeedbackAtom.reportWrite(value, super.nameFeedback, () {
      super.nameFeedback = value;
    });
  }

  final _$nameValidatorAtom =
      Atom(name: '_RegisterControllerBase.nameValidator');

  @override
  bool get nameValidator {
    _$nameValidatorAtom.reportRead();
    return super.nameValidator;
  }

  @override
  set nameValidator(bool value) {
    _$nameValidatorAtom.reportWrite(value, super.nameValidator, () {
      super.nameValidator = value;
    });
  }

  final _$emailAtom = Atom(name: '_RegisterControllerBase.email');

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

  final _$emailFeedbackAtom =
      Atom(name: '_RegisterControllerBase.emailFeedback');

  @override
  String get emailFeedback {
    _$emailFeedbackAtom.reportRead();
    return super.emailFeedback;
  }

  @override
  set emailFeedback(String value) {
    _$emailFeedbackAtom.reportWrite(value, super.emailFeedback, () {
      super.emailFeedback = value;
    });
  }

  final _$emailValidatorAtom =
      Atom(name: '_RegisterControllerBase.emailValidator');

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

  final _$cpfAtom = Atom(name: '_RegisterControllerBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$cpfFeedbackAtom = Atom(name: '_RegisterControllerBase.cpfFeedback');

  @override
  String get cpfFeedback {
    _$cpfFeedbackAtom.reportRead();
    return super.cpfFeedback;
  }

  @override
  set cpfFeedback(String value) {
    _$cpfFeedbackAtom.reportWrite(value, super.cpfFeedback, () {
      super.cpfFeedback = value;
    });
  }

  final _$cpfValidatorAtom = Atom(name: '_RegisterControllerBase.cpfValidator');

  @override
  bool get cpfValidator {
    _$cpfValidatorAtom.reportRead();
    return super.cpfValidator;
  }

  @override
  set cpfValidator(bool value) {
    _$cpfValidatorAtom.reportWrite(value, super.cpfValidator, () {
      super.cpfValidator = value;
    });
  }

  final _$passwordAtom = Atom(name: '_RegisterControllerBase.password');

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

  final _$passwordFeedbackAtom =
      Atom(name: '_RegisterControllerBase.passwordFeedback');

  @override
  String get passwordFeedback {
    _$passwordFeedbackAtom.reportRead();
    return super.passwordFeedback;
  }

  @override
  set passwordFeedback(String value) {
    _$passwordFeedbackAtom.reportWrite(value, super.passwordFeedback, () {
      super.passwordFeedback = value;
    });
  }

  final _$passwordValidatorAtom =
      Atom(name: '_RegisterControllerBase.passwordValidator');

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

  final _$_RegisterControllerBaseActionController =
      ActionController(name: '_RegisterControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSelectOption(int value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeSelectOption');
    try {
      return super.changeSelectOption(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeName(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmail(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCPF(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeCPF');
    try {
      return super.changeCPF(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changePassword');
    try {
      return super.changePassword(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNameFeedback(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeNameFeedback');
    try {
      return super.changeNameFeedback(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmailFeedback(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeEmailFeedback');
    try {
      return super.changeEmailFeedback(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCPFFeedback(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeCPFFeedback');
    try {
      return super.changeCPFFeedback(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordFeedback(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changePasswordFeedback');
    try {
      return super.changePasswordFeedback(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNameValidator(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeNameValidator');
    try {
      return super.changeNameValidator(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmailValidator(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeEmailValidator');
    try {
      return super.changeEmailValidator(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCPFValidator(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeCPFValidator');
    try {
      return super.changeCPFValidator(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordValidator(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changePasswordValidator');
    try {
      return super.changePasswordValidator(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
selectOption: ${selectOption},
name: ${name},
nameFeedback: ${nameFeedback},
nameValidator: ${nameValidator},
email: ${email},
emailFeedback: ${emailFeedback},
emailValidator: ${emailValidator},
cpf: ${cpf},
cpfFeedback: ${cpfFeedback},
cpfValidator: ${cpfValidator},
password: ${password},
passwordFeedback: ${passwordFeedback},
passwordValidator: ${passwordValidator}
    ''';
  }
}
