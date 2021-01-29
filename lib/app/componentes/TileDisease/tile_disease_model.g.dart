// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_disease_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TileDiseaseModel on _TileDiseaseModelBase, Store {
  final _$titleAtom = Atom(name: '_TileDiseaseModelBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$checkAtom = Atom(name: '_TileDiseaseModelBase.check');

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  final _$changeAnotherAtom = Atom(name: '_TileDiseaseModelBase.changeAnother');

  @override
  Function get changeAnother {
    _$changeAnotherAtom.reportRead();
    return super.changeAnother;
  }

  @override
  set changeAnother(Function value) {
    _$changeAnotherAtom.reportWrite(value, super.changeAnother, () {
      super.changeAnother = value;
    });
  }

  final _$_TileDiseaseModelBaseActionController =
      ActionController(name: '_TileDiseaseModelBase');

  @override
  dynamic setTitle(String value) {
    final _$actionInfo = _$_TileDiseaseModelBaseActionController.startAction(
        name: '_TileDiseaseModelBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_TileDiseaseModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeOther(bool value) {
    final _$actionInfo = _$_TileDiseaseModelBaseActionController.startAction(
        name: '_TileDiseaseModelBase.changeOther');
    try {
      return super.changeOther(value);
    } finally {
      _$_TileDiseaseModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(bool value) {
    final _$actionInfo = _$_TileDiseaseModelBaseActionController.startAction(
        name: '_TileDiseaseModelBase.setCheck');
    try {
      return super.setCheck(value);
    } finally {
      _$_TileDiseaseModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
check: ${check},
changeAnother: ${changeAnother}
    ''';
  }
}
