// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_familiar_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RegisterFamiliarController = BindInject(
  (i) => RegisterFamiliarController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterFamiliarController on _RegisterFamiliarControllerBase, Store {
  final _$loadingAtom = Atom(name: '_RegisterFamiliarControllerBase.loading');

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

  final _$nameAtom = Atom(name: '_RegisterFamiliarControllerBase.name');

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

  final _$_RegisterFamiliarControllerBaseActionController =
      ActionController(name: '_RegisterFamiliarControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_RegisterFamiliarControllerBaseActionController
        .startAction(name: '_RegisterFamiliarControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_RegisterFamiliarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeName(String value) {
    final _$actionInfo = _$_RegisterFamiliarControllerBaseActionController
        .startAction(name: '_RegisterFamiliarControllerBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$_RegisterFamiliarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
name: ${name}
    ''';
  }
}
