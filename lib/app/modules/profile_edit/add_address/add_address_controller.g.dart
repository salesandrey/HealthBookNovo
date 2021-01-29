// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_address_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AddAddressController = BindInject(
  (i) => AddAddressController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddAddressController on _AddAddressControllerBase, Store {
  final _$userIDAtom = Atom(name: '_AddAddressControllerBase.userID');

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

  final _$cepAtom = Atom(name: '_AddAddressControllerBase.cep');

  @override
  String get cep {
    _$cepAtom.reportRead();
    return super.cep;
  }

  @override
  set cep(String value) {
    _$cepAtom.reportWrite(value, super.cep, () {
      super.cep = value;
    });
  }

  final _$loadingAtom = Atom(name: '_AddAddressControllerBase.loading');

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

  final _$addressAtom = Atom(name: '_AddAddressControllerBase.address');

  @override
  String get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  final _$neighborhoodAtom =
      Atom(name: '_AddAddressControllerBase.neighborhood');

  @override
  String get neighborhood {
    _$neighborhoodAtom.reportRead();
    return super.neighborhood;
  }

  @override
  set neighborhood(String value) {
    _$neighborhoodAtom.reportWrite(value, super.neighborhood, () {
      super.neighborhood = value;
    });
  }

  final _$cityAtom = Atom(name: '_AddAddressControllerBase.city');

  @override
  String get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  final _$ufAtom = Atom(name: '_AddAddressControllerBase.uf');

  @override
  String get uf {
    _$ufAtom.reportRead();
    return super.uf;
  }

  @override
  set uf(String value) {
    _$ufAtom.reportWrite(value, super.uf, () {
      super.uf = value;
    });
  }

  final _$numberHouseAtom = Atom(name: '_AddAddressControllerBase.numberHouse');

  @override
  String get numberHouse {
    _$numberHouseAtom.reportRead();
    return super.numberHouse;
  }

  @override
  set numberHouse(String value) {
    _$numberHouseAtom.reportWrite(value, super.numberHouse, () {
      super.numberHouse = value;
    });
  }

  final _$complementAtom = Atom(name: '_AddAddressControllerBase.complement');

  @override
  String get complement {
    _$complementAtom.reportRead();
    return super.complement;
  }

  @override
  set complement(String value) {
    _$complementAtom.reportWrite(value, super.complement, () {
      super.complement = value;
    });
  }

  final _$saveDataAsyncAction =
      AsyncAction('_AddAddressControllerBase.saveData');

  @override
  Future<void> saveData() {
    return _$saveDataAsyncAction.run(() => super.saveData());
  }

  final _$_AddAddressControllerBaseActionController =
      ActionController(name: '_AddAddressControllerBase');

  @override
  void changeUserID(String value) {
    final _$actionInfo = _$_AddAddressControllerBaseActionController
        .startAction(name: '_AddAddressControllerBase.changeUserID');
    try {
      return super.changeUserID(value);
    } finally {
      _$_AddAddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCep(String value) {
    final _$actionInfo = _$_AddAddressControllerBaseActionController
        .startAction(name: '_AddAddressControllerBase.changeCep');
    try {
      return super.changeCep(value);
    } finally {
      _$_AddAddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_AddAddressControllerBaseActionController
        .startAction(name: '_AddAddressControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_AddAddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeAddress(String value) {
    final _$actionInfo = _$_AddAddressControllerBaseActionController
        .startAction(name: '_AddAddressControllerBase.changeAddress');
    try {
      return super.changeAddress(value);
    } finally {
      _$_AddAddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNeighborhood(String value) {
    final _$actionInfo = _$_AddAddressControllerBaseActionController
        .startAction(name: '_AddAddressControllerBase.changeNeighborhood');
    try {
      return super.changeNeighborhood(value);
    } finally {
      _$_AddAddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCity(String value) {
    final _$actionInfo = _$_AddAddressControllerBaseActionController
        .startAction(name: '_AddAddressControllerBase.changeCity');
    try {
      return super.changeCity(value);
    } finally {
      _$_AddAddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeUF(String value) {
    final _$actionInfo = _$_AddAddressControllerBaseActionController
        .startAction(name: '_AddAddressControllerBase.changeUF');
    try {
      return super.changeUF(value);
    } finally {
      _$_AddAddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNumberHouse(String value) {
    final _$actionInfo = _$_AddAddressControllerBaseActionController
        .startAction(name: '_AddAddressControllerBase.changeNumberHouse');
    try {
      return super.changeNumberHouse(value);
    } finally {
      _$_AddAddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeComplement(String value) {
    final _$actionInfo = _$_AddAddressControllerBaseActionController
        .startAction(name: '_AddAddressControllerBase.changeComplement');
    try {
      return super.changeComplement(value);
    } finally {
      _$_AddAddressControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userID: ${userID},
cep: ${cep},
loading: ${loading},
address: ${address},
neighborhood: ${neighborhood},
city: ${city},
uf: ${uf},
numberHouse: ${numberHouse},
complement: ${complement}
    ''';
  }
}
