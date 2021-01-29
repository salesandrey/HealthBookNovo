// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ResetPasswordController = BindInject(
  (i) => ResetPasswordController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ResetPasswordController on _ResetPasswordControllerBase, Store {
  final _$emailAtom = Atom(name: '_ResetPasswordControllerBase.email');

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
      Atom(name: '_ResetPasswordControllerBase.emailFeedback');

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
      Atom(name: '_ResetPasswordControllerBase.emailValidator');

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

  final _$cpfAtom = Atom(name: '_ResetPasswordControllerBase.cpf');

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

  final _$cpfFeedbackAtom =
      Atom(name: '_ResetPasswordControllerBase.cpfFeedback');

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

  final _$cpfValidatorAtom =
      Atom(name: '_ResetPasswordControllerBase.cpfValidator');

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

  final _$_ResetPasswordControllerBaseActionController =
      ActionController(name: '_ResetPasswordControllerBase');

  @override
  void changeEmail(String value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmailFeedback(String value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changeEmailFeedback');
    try {
      return super.changeEmailFeedback(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmailValidator(bool value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changeEmailValidator');
    try {
      return super.changeEmailValidator(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCPF(String value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changeCPF');
    try {
      return super.changeCPF(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCPFFeedback(String value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changeCPFFeedback');
    try {
      return super.changeCPFFeedback(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCPFValidator(bool value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changeCPFValidator');
    try {
      return super.changeCPFValidator(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
emailFeedback: ${emailFeedback},
emailValidator: ${emailValidator},
cpf: ${cpf},
cpfFeedback: ${cpfFeedback},
cpfValidator: ${cpfValidator}
    ''';
  }
}
