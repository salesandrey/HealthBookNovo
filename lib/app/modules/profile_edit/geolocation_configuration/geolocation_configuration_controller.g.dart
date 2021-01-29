// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocation_configuration_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GeolocationConfigurationController
    on _GeolocationConfigurationControllerBase, Store {
  final _$valueSliderAtom =
      Atom(name: '_GeolocationConfigurationControllerBase.valueSlider');

  @override
  double get valueSlider {
    _$valueSliderAtom.reportRead();
    return super.valueSlider;
  }

  @override
  set valueSlider(double value) {
    _$valueSliderAtom.reportWrite(value, super.valueSlider, () {
      super.valueSlider = value;
    });
  }

  final _$storageAtom =
      Atom(name: '_GeolocationConfigurationControllerBase.storage');

  @override
  ILocalStorage get storage {
    _$storageAtom.reportRead();
    return super.storage;
  }

  @override
  set storage(ILocalStorage value) {
    _$storageAtom.reportWrite(value, super.storage, () {
      super.storage = value;
    });
  }

  final _$saveGeolocationAsyncAction =
      AsyncAction('_GeolocationConfigurationControllerBase.saveGeolocation');

  @override
  Future<void> saveGeolocation() {
    return _$saveGeolocationAsyncAction.run(() => super.saveGeolocation());
  }

  final _$_GeolocationConfigurationControllerBaseActionController =
      ActionController(name: '_GeolocationConfigurationControllerBase');

  @override
  void changeValueSlider(dynamic value) {
    final _$actionInfo =
        _$_GeolocationConfigurationControllerBaseActionController.startAction(
            name: '_GeolocationConfigurationControllerBase.changeValueSlider');
    try {
      return super.changeValueSlider(value);
    } finally {
      _$_GeolocationConfigurationControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
valueSlider: ${valueSlider},
storage: ${storage}
    ''';
  }
}
