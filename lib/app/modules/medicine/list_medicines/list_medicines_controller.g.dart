// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_medicines_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ListMedicinesController = BindInject(
  (i) => ListMedicinesController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListMedicinesController on _ListMedicinesControllerBase, Store {
  final _$currentUserAtom =
      Atom(name: '_ListMedicinesControllerBase.currentUser');

  @override
  UserModel get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  @override
  set currentUser(UserModel value) {
    _$currentUserAtom.reportWrite(value, super.currentUser, () {
      super.currentUser = value;
    });
  }

  final _$medicinesAtom = Atom(name: '_ListMedicinesControllerBase.medicines');

  @override
  ObservableList<PatientMedicineModel> get medicines {
    _$medicinesAtom.reportRead();
    return super.medicines;
  }

  @override
  set medicines(ObservableList<PatientMedicineModel> value) {
    _$medicinesAtom.reportWrite(value, super.medicines, () {
      super.medicines = value;
    });
  }

  final _$getMedicinesAsyncAction =
      AsyncAction('_ListMedicinesControllerBase.getMedicines');

  @override
  Future<void> getMedicines() {
    return _$getMedicinesAsyncAction.run(() => super.getMedicines());
  }

  final _$removeMedicineAsyncAction =
      AsyncAction('_ListMedicinesControllerBase.removeMedicine');

  @override
  Future<void> removeMedicine(PatientMedicineModel medicine) {
    return _$removeMedicineAsyncAction
        .run(() => super.removeMedicine(medicine));
  }

  final _$_ListMedicinesControllerBaseActionController =
      ActionController(name: '_ListMedicinesControllerBase');

  @override
  void changeCurrentUser(UserModel user) {
    final _$actionInfo = _$_ListMedicinesControllerBaseActionController
        .startAction(name: '_ListMedicinesControllerBase.changeCurrentUser');
    try {
      return super.changeCurrentUser(user);
    } finally {
      _$_ListMedicinesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser},
medicines: ${medicines}
    ''';
  }
}
