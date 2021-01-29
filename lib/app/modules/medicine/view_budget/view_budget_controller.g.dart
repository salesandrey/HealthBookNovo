// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_budget_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ViewBudgetController on _ViewBudgetControllerBase, Store {
  final _$pharmacyEstimateAtom =
      Atom(name: '_ViewBudgetControllerBase.pharmacyEstimate');

  @override
  PharmacyEstimateListModel get pharmacyEstimate {
    _$pharmacyEstimateAtom.reportRead();
    return super.pharmacyEstimate;
  }

  @override
  set pharmacyEstimate(PharmacyEstimateListModel value) {
    _$pharmacyEstimateAtom.reportWrite(value, super.pharmacyEstimate, () {
      super.pharmacyEstimate = value;
    });
  }

  final _$estimatesAtom = Atom(name: '_ViewBudgetControllerBase.estimates');

  @override
  ObservableList<EstimateModel> get estimates {
    _$estimatesAtom.reportRead();
    return super.estimates;
  }

  @override
  set estimates(ObservableList<EstimateModel> value) {
    _$estimatesAtom.reportWrite(value, super.estimates, () {
      super.estimates = value;
    });
  }

  final _$addressAtom = Atom(name: '_ViewBudgetControllerBase.address');

  @override
  AddressModel get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(AddressModel value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  final _$getAddressAsyncAction =
      AsyncAction('_ViewBudgetControllerBase.getAddress');

  @override
  Future<void> getAddress() {
    return _$getAddressAsyncAction.run(() => super.getAddress());
  }

  final _$_ViewBudgetControllerBaseActionController =
      ActionController(name: '_ViewBudgetControllerBase');

  @override
  void changePharmacyEstimate(PharmacyEstimateListModel model) {
    final _$actionInfo = _$_ViewBudgetControllerBaseActionController
        .startAction(name: '_ViewBudgetControllerBase.changePharmacyEstimate');
    try {
      return super.changePharmacyEstimate(model);
    } finally {
      _$_ViewBudgetControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pharmacyEstimate: ${pharmacyEstimate},
estimates: ${estimates},
address: ${address}
    ''';
  }
}
