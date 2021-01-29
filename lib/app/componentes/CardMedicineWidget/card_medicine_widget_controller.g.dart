// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_medicine_widget_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardMedicineWidgetController
    on _CardMedicineWidgetControllerBase, Store {
  final _$medicineAtom =
      Atom(name: '_CardMedicineWidgetControllerBase.medicine');

  @override
  PatientMedicineModel get medicine {
    _$medicineAtom.reportRead();
    return super.medicine;
  }

  @override
  set medicine(PatientMedicineModel value) {
    _$medicineAtom.reportWrite(value, super.medicine, () {
      super.medicine = value;
    });
  }

  final _$navigatorAtom =
      Atom(name: '_CardMedicineWidgetControllerBase.navigator');

  @override
  Function get navigator {
    _$navigatorAtom.reportRead();
    return super.navigator;
  }

  @override
  set navigator(Function value) {
    _$navigatorAtom.reportWrite(value, super.navigator, () {
      super.navigator = value;
    });
  }

  final _$showAtom = Atom(name: '_CardMedicineWidgetControllerBase.show');

  @override
  bool get show {
    _$showAtom.reportRead();
    return super.show;
  }

  @override
  set show(bool value) {
    _$showAtom.reportWrite(value, super.show, () {
      super.show = value;
    });
  }

  final _$_CardMedicineWidgetControllerBaseActionController =
      ActionController(name: '_CardMedicineWidgetControllerBase');

  @override
  void showOptions(bool value) {
    final _$actionInfo = _$_CardMedicineWidgetControllerBaseActionController
        .startAction(name: '_CardMedicineWidgetControllerBase.showOptions');
    try {
      return super.showOptions(value);
    } finally {
      _$_CardMedicineWidgetControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
medicine: ${medicine},
navigator: ${navigator},
show: ${show}
    ''';
  }
}
