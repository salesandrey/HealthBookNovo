// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_dependent_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ListDependentController = BindInject(
  (i) => ListDependentController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListDependentController on _ListDependentControllerBase, Store {
  final _$dependentsAtom =
      Atom(name: '_ListDependentControllerBase.dependents');

  @override
  ObservableList<dynamic> get dependents {
    _$dependentsAtom.reportRead();
    return super.dependents;
  }

  @override
  set dependents(ObservableList<dynamic> value) {
    _$dependentsAtom.reportWrite(value, super.dependents, () {
      super.dependents = value;
    });
  }

  final _$_ListDependentControllerBaseActionController =
      ActionController(name: '_ListDependentControllerBase');

  @override
  void addDependent(DependentModel dependent) {
    final _$actionInfo = _$_ListDependentControllerBaseActionController
        .startAction(name: '_ListDependentControllerBase.addDependent');
    try {
      return super.addDependent(dependent);
    } finally {
      _$_ListDependentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dependents: ${dependents}
    ''';
  }
}
