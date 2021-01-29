// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddressController on _AddressControllerBase, Store {
  final _$idUserAtom = Atom(name: '_AddressControllerBase.idUser');

  @override
  String get idUser {
    _$idUserAtom.reportRead();
    return super.idUser;
  }

  @override
  set idUser(String value) {
    _$idUserAtom.reportWrite(value, super.idUser, () {
      super.idUser = value;
    });
  }

  final _$addressAtom = Atom(name: '_AddressControllerBase.address');

  @override
  ObservableList<AddressModel> get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(ObservableList<AddressModel> value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  final _$getAddressAsyncAction =
      AsyncAction('_AddressControllerBase.getAddress');

  @override
  Future<void> getAddress() {
    return _$getAddressAsyncAction.run(() => super.getAddress());
  }

  final _$deleteAddressAsyncAction =
      AsyncAction('_AddressControllerBase.deleteAddress');

  @override
  Future<void> deleteAddress(AddressModel current) {
    return _$deleteAddressAsyncAction.run(() => super.deleteAddress(current));
  }

  final _$_AddressControllerBaseActionController =
      ActionController(name: '_AddressControllerBase');

  @override
  void changeIdUser(String value) {
    final _$actionInfo = _$_AddressControllerBaseActionController.startAction(
        name: '_AddressControllerBase.changeIdUser');
    try {
      return super.changeIdUser(value);
    } finally {
      _$_AddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
idUser: ${idUser},
address: ${address}
    ''';
  }
}
