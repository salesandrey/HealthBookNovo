// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_medicine_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $EditMedicineController = BindInject(
  (i) => EditMedicineController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EditMedicineController on _EditMedicineControllerBase, Store {
  final _$medicineAtom = Atom(name: '_EditMedicineControllerBase.medicine');

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

  final _$loadingAtom = Atom(name: '_EditMedicineControllerBase.loading');

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

  final _$imageDocAtom = Atom(name: '_EditMedicineControllerBase.imageDoc');

  @override
  File get imageDoc {
    _$imageDocAtom.reportRead();
    return super.imageDoc;
  }

  @override
  set imageDoc(File value) {
    _$imageDocAtom.reportWrite(value, super.imageDoc, () {
      super.imageDoc = value;
    });
  }

  final _$dateRegisterAtom =
      Atom(name: '_EditMedicineControllerBase.dateRegister');

  @override
  String get dateRegister {
    _$dateRegisterAtom.reportRead();
    return super.dateRegister;
  }

  @override
  set dateRegister(String value) {
    _$dateRegisterAtom.reportWrite(value, super.dateRegister, () {
      super.dateRegister = value;
    });
  }

  final _$nameMedicineAtom =
      Atom(name: '_EditMedicineControllerBase.nameMedicine');

  @override
  String get nameMedicine {
    _$nameMedicineAtom.reportRead();
    return super.nameMedicine;
  }

  @override
  set nameMedicine(String value) {
    _$nameMedicineAtom.reportWrite(value, super.nameMedicine, () {
      super.nameMedicine = value;
    });
  }

  final _$dosageAtom = Atom(name: '_EditMedicineControllerBase.dosage');

  @override
  int get dosage {
    _$dosageAtom.reportRead();
    return super.dosage;
  }

  @override
  set dosage(int value) {
    _$dosageAtom.reportWrite(value, super.dosage, () {
      super.dosage = value;
    });
  }

  final _$timeMedicineAtom =
      Atom(name: '_EditMedicineControllerBase.timeMedicine');

  @override
  String get timeMedicine {
    _$timeMedicineAtom.reportRead();
    return super.timeMedicine;
  }

  @override
  set timeMedicine(String value) {
    _$timeMedicineAtom.reportWrite(value, super.timeMedicine, () {
      super.timeMedicine = value;
    });
  }

  final _$dateStartAtom = Atom(name: '_EditMedicineControllerBase.dateStart');

  @override
  String get dateStart {
    _$dateStartAtom.reportRead();
    return super.dateStart;
  }

  @override
  set dateStart(String value) {
    _$dateStartAtom.reportWrite(value, super.dateStart, () {
      super.dateStart = value;
    });
  }

  final _$dateEndAtom = Atom(name: '_EditMedicineControllerBase.dateEnd');

  @override
  String get dateEnd {
    _$dateEndAtom.reportRead();
    return super.dateEnd;
  }

  @override
  set dateEnd(String value) {
    _$dateEndAtom.reportWrite(value, super.dateEnd, () {
      super.dateEnd = value;
    });
  }

  final _$numberPillsAtom =
      Atom(name: '_EditMedicineControllerBase.numberPills');

  @override
  int get numberPills {
    _$numberPillsAtom.reportRead();
    return super.numberPills;
  }

  @override
  set numberPills(int value) {
    _$numberPillsAtom.reportWrite(value, super.numberPills, () {
      super.numberPills = value;
    });
  }

  final _$hasmedicineContinuingAtom =
      Atom(name: '_EditMedicineControllerBase.hasmedicineContinuing');

  @override
  bool get hasmedicineContinuing {
    _$hasmedicineContinuingAtom.reportRead();
    return super.hasmedicineContinuing;
  }

  @override
  set hasmedicineContinuing(bool value) {
    _$hasmedicineContinuingAtom.reportWrite(value, super.hasmedicineContinuing,
        () {
      super.hasmedicineContinuing = value;
    });
  }

  final _$changeImageDocAsyncAction =
      AsyncAction('_EditMedicineControllerBase.changeImageDoc');

  @override
  Future<void> changeImageDoc() {
    return _$changeImageDocAsyncAction.run(() => super.changeImageDoc());
  }

  final _$updateDataAsyncAction =
      AsyncAction('_EditMedicineControllerBase.updateData');

  @override
  Future<void> updateData() {
    return _$updateDataAsyncAction.run(() => super.updateData());
  }

  final _$_EditMedicineControllerBaseActionController =
      ActionController(name: '_EditMedicineControllerBase');

  @override
  void changeMedicine(PatientMedicineModel value) {
    final _$actionInfo = _$_EditMedicineControllerBaseActionController
        .startAction(name: '_EditMedicineControllerBase.changeMedicine');
    try {
      return super.changeMedicine(value);
    } finally {
      _$_EditMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_EditMedicineControllerBaseActionController
        .startAction(name: '_EditMedicineControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_EditMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNameMedicine(String value) {
    final _$actionInfo = _$_EditMedicineControllerBaseActionController
        .startAction(name: '_EditMedicineControllerBase.changeNameMedicine');
    try {
      return super.changeNameMedicine(value);
    } finally {
      _$_EditMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDosage(String value) {
    final _$actionInfo = _$_EditMedicineControllerBaseActionController
        .startAction(name: '_EditMedicineControllerBase.changeDosage');
    try {
      return super.changeDosage(value);
    } finally {
      _$_EditMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTimeMedicine(String time) {
    final _$actionInfo = _$_EditMedicineControllerBaseActionController
        .startAction(name: '_EditMedicineControllerBase.changeTimeMedicine');
    try {
      return super.changeTimeMedicine(time);
    } finally {
      _$_EditMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDateStart(String value) {
    final _$actionInfo = _$_EditMedicineControllerBaseActionController
        .startAction(name: '_EditMedicineControllerBase.changeDateStart');
    try {
      return super.changeDateStart(value);
    } finally {
      _$_EditMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDateEnd(String value) {
    final _$actionInfo = _$_EditMedicineControllerBaseActionController
        .startAction(name: '_EditMedicineControllerBase.changeDateEnd');
    try {
      return super.changeDateEnd(value);
    } finally {
      _$_EditMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNumberPills(String value) {
    final _$actionInfo = _$_EditMedicineControllerBaseActionController
        .startAction(name: '_EditMedicineControllerBase.changeNumberPills');
    try {
      return super.changeNumberPills(value);
    } finally {
      _$_EditMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeHasMedicineContinuing(bool value) {
    final _$actionInfo =
        _$_EditMedicineControllerBaseActionController.startAction(
            name: '_EditMedicineControllerBase.changeHasMedicineContinuing');
    try {
      return super.changeHasMedicineContinuing(value);
    } finally {
      _$_EditMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
medicine: ${medicine},
loading: ${loading},
imageDoc: ${imageDoc},
dateRegister: ${dateRegister},
nameMedicine: ${nameMedicine},
dosage: ${dosage},
timeMedicine: ${timeMedicine},
dateStart: ${dateStart},
dateEnd: ${dateEnd},
numberPills: ${numberPills},
hasmedicineContinuing: ${hasmedicineContinuing}
    ''';
  }
}
