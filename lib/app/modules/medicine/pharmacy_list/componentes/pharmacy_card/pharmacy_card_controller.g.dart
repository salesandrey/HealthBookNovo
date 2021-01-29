// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_card_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PharmacyCardController = BindInject(
  (i) => PharmacyCardController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PharmacyCardController on _PharmacyCardControllerBase, Store {
  final _$activeAtom = Atom(name: '_PharmacyCardControllerBase.active');

  @override
  bool get active {
    _$activeAtom.reportRead();
    return super.active;
  }

  @override
  set active(bool value) {
    _$activeAtom.reportWrite(value, super.active, () {
      super.active = value;
    });
  }

  final _$_PharmacyCardControllerBaseActionController =
      ActionController(name: '_PharmacyCardControllerBase');

  @override
  void changeActive(bool value) {
    final _$actionInfo = _$_PharmacyCardControllerBaseActionController
        .startAction(name: '_PharmacyCardControllerBase.changeActive');
    try {
      return super.changeActive(value);
    } finally {
      _$_PharmacyCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
active: ${active}
    ''';
  }
}
