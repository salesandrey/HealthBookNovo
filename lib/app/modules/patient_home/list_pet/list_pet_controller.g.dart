// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_pet_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListPetController on _ListPetControllerBase, Store {
  final _$userIDAtom = Atom(name: '_ListPetControllerBase.userID');

  @override
  String get userID {
    _$userIDAtom.reportRead();
    return super.userID;
  }

  @override
  set userID(String value) {
    _$userIDAtom.reportWrite(value, super.userID, () {
      super.userID = value;
    });
  }

  final _$petsAtom = Atom(name: '_ListPetControllerBase.pets');

  @override
  ObservableList<PetModel> get pets {
    _$petsAtom.reportRead();
    return super.pets;
  }

  @override
  set pets(ObservableList<PetModel> value) {
    _$petsAtom.reportWrite(value, super.pets, () {
      super.pets = value;
    });
  }

  @override
  String toString() {
    return '''
userID: ${userID},
pets: ${pets}
    ''';
  }
}
