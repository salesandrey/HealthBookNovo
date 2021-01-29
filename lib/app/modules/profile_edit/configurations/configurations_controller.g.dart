// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configurations_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfigurationsController on _ConfigurationsControllerBase, Store {
  final _$geolocationAtom =
      Atom(name: '_ConfigurationsControllerBase.geolocation');

  @override
  double get geolocation {
    _$geolocationAtom.reportRead();
    return super.geolocation;
  }

  @override
  set geolocation(double value) {
    _$geolocationAtom.reportWrite(value, super.geolocation, () {
      super.geolocation = value;
    });
  }

  final _$getGeolocationAsyncAction =
      AsyncAction('_ConfigurationsControllerBase.getGeolocation');

  @override
  Future<void> getGeolocation() {
    return _$getGeolocationAsyncAction.run(() => super.getGeolocation());
  }

  @override
  String toString() {
    return '''
geolocation: ${geolocation}
    ''';
  }
}
