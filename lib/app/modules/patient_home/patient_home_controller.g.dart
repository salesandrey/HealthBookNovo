// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PatientHomeController on _PatientHomeControllerBase, Store {
  final _$currentUserAtom =
      Atom(name: '_PatientHomeControllerBase.currentUser');

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

  final _$medicinesAtom = Atom(name: '_PatientHomeControllerBase.medicines');

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

  final _$getCurrentUserAsyncAction =
      AsyncAction('_PatientHomeControllerBase.getCurrentUser');

  @override
  Future<void> getCurrentUser() {
    return _$getCurrentUserAsyncAction.run(() => super.getCurrentUser());
  }

  final _$getMedicinesAsyncAction =
      AsyncAction('_PatientHomeControllerBase.getMedicines');

  @override
  Future<void> getMedicines() {
    return _$getMedicinesAsyncAction.run(() => super.getMedicines());
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser},
medicines: ${medicines}
    ''';
  }
}
