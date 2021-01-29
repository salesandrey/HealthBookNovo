// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_access_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $FirstAccessController = BindInject(
  (i) => FirstAccessController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FirstAccessController on _FirstAccessControllerBase, Store {
  final _$termsAtom = Atom(name: '_FirstAccessControllerBase.terms');

  @override
  bool get terms {
    _$termsAtom.reportRead();
    return super.terms;
  }

  @override
  set terms(bool value) {
    _$termsAtom.reportWrite(value, super.terms, () {
      super.terms = value;
    });
  }

  final _$getTermsAsyncAction =
      AsyncAction('_FirstAccessControllerBase.getTerms');

  @override
  Future<void> getTerms() {
    return _$getTermsAsyncAction.run(() => super.getTerms());
  }

  @override
  String toString() {
    return '''
terms: ${terms}
    ''';
  }
}
