// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_list_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $DeliveryListController = BindInject(
  (i) => DeliveryListController(medicineData: i<MedicineController>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DeliveryListController on _DeliveryListControllerBase, Store {
  final _$listAtom = Atom(name: '_DeliveryListControllerBase.list');

  @override
  ObservableList<DeliveryCardWidget> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<DeliveryCardWidget> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$listAddressAtom =
      Atom(name: '_DeliveryListControllerBase.listAddress');

  @override
  ObservableList<AddressModel> get listAddress {
    _$listAddressAtom.reportRead();
    return super.listAddress;
  }

  @override
  set listAddress(ObservableList<AddressModel> value) {
    _$listAddressAtom.reportWrite(value, super.listAddress, () {
      super.listAddress = value;
    });
  }

  final _$getAddressAsyncAction =
      AsyncAction('_DeliveryListControllerBase.getAddress');

  @override
  Future<void> getAddress() {
    return _$getAddressAsyncAction.run(() => super.getAddress());
  }

  final _$_DeliveryListControllerBaseActionController =
      ActionController(name: '_DeliveryListControllerBase');

  @override
  void changeNoDelivery(int index) {
    final _$actionInfo = _$_DeliveryListControllerBaseActionController
        .startAction(name: '_DeliveryListControllerBase.changeNoDelivery');
    try {
      return super.changeNoDelivery(index);
    } finally {
      _$_DeliveryListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void buildCardDelivery() {
    final _$actionInfo = _$_DeliveryListControllerBaseActionController
        .startAction(name: '_DeliveryListControllerBase.buildCardDelivery');
    try {
      return super.buildCardDelivery();
    } finally {
      _$_DeliveryListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
list: ${list},
listAddress: ${listAddress}
    ''';
  }
}
