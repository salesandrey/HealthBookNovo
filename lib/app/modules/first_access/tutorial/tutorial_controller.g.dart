// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutorial_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $TutorialController = BindInject(
  (i) => TutorialController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TutorialController on _TutorialControllerBase, Store {
  final _$valueAtom = Atom(name: '_TutorialControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_TutorialControllerBaseActionController =
      ActionController(name: '_TutorialControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_TutorialControllerBaseActionController.startAction(
        name: '_TutorialControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_TutorialControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
