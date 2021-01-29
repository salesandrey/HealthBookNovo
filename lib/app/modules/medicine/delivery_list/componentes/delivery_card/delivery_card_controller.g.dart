// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_card_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DeliveryCardController on _DeliveryCardControllerBase, Store {
  final _$activeAtom = Atom(name: '_DeliveryCardControllerBase.active');

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

  final _$changeAnotherAtom =
      Atom(name: '_DeliveryCardControllerBase.changeAnother');

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

  final _$_DeliveryCardControllerBaseActionController =
      ActionController(name: '_DeliveryCardControllerBase');

  @override
  void changeActive(bool value) {
    final _$actionInfo = _$_DeliveryCardControllerBaseActionController
        .startAction(name: '_DeliveryCardControllerBase.changeActive');
    try {
      return super.changeActive(value);
    } finally {
      _$_DeliveryCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeOther(bool value) {
    final _$actionInfo = _$_DeliveryCardControllerBaseActionController
        .startAction(name: '_DeliveryCardControllerBase.changeOther');
    try {
      return super.changeOther(value);
    } finally {
      _$_DeliveryCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
active: ${active},
changeAnother: ${changeAnother}
    ''';
  }
}
