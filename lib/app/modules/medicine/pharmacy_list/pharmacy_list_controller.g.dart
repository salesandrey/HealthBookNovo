// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_list_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PharmacyListController = BindInject(
  (i) => PharmacyListController(
      selectAddress: i<DeliveryListController>(),
      store: i<CarStore>(),
      medicineData: i<MedicineController>(),
      rentCarController: i<RentCarController>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PharmacyListController on _PharmacyListControllerBase, Store {
  final _$loadingAtom = Atom(name: '_PharmacyListControllerBase.loading');

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

  final _$listAtom = Atom(name: '_PharmacyListControllerBase.list');

  @override
  ObservableList<PharmacyCardWidget> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<PharmacyCardWidget> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$currentUserAtom =
      Atom(name: '_PharmacyListControllerBase.currentUser');

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

  final _$pharmaciesAtom = Atom(name: '_PharmacyListControllerBase.pharmacies');

  @override
  ObservableList<PharmaModel> get pharmacies {
    _$pharmaciesAtom.reportRead();
    return super.pharmacies;
  }

  @override
  set pharmacies(ObservableList<PharmaModel> value) {
    _$pharmaciesAtom.reportWrite(value, super.pharmacies, () {
      super.pharmacies = value;
    });
  }

  final _$getPharmaciesAsyncAction =
      AsyncAction('_PharmacyListControllerBase.getPharmacies');

  @override
  Future<void> getPharmacies() {
    return _$getPharmaciesAsyncAction.run(() => super.getPharmacies());
  }

  final _$saveEstimativeAsyncAction =
      AsyncAction('_PharmacyListControllerBase.saveEstimative');

  @override
  Future<void> saveEstimative() {
    return _$saveEstimativeAsyncAction.run(() => super.saveEstimative());
  }

  final _$_PharmacyListControllerBaseActionController =
      ActionController(name: '_PharmacyListControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_PharmacyListControllerBaseActionController
        .startAction(name: '_PharmacyListControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_PharmacyListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void buildCardDelivery() {
    final _$actionInfo = _$_PharmacyListControllerBaseActionController
        .startAction(name: '_PharmacyListControllerBase.buildCardDelivery');
    try {
      return super.buildCardDelivery();
    } finally {
      _$_PharmacyListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
list: ${list},
currentUser: ${currentUser},
pharmacies: ${pharmacies}
    ''';
  }
}
