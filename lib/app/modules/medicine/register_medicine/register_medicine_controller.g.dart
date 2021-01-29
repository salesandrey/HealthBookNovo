// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_medicine_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RegisterMedicineController = BindInject(
  (i) => RegisterMedicineController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterMedicineController on _RegisterMedicineControllerBase, Store {
  final _$userIdAtom = Atom(name: '_RegisterMedicineControllerBase.userId');

  @override
  String get userId {
    _$userIdAtom.reportRead();
    return super.userId;
  }

  @override
  set userId(String value) {
    _$userIdAtom.reportWrite(value, super.userId, () {
      super.userId = value;
    });
  }

  final _$loadingAtom = Atom(name: '_RegisterMedicineControllerBase.loading');

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

  final _$imageDocAtom = Atom(name: '_RegisterMedicineControllerBase.imageDoc');

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
      Atom(name: '_RegisterMedicineControllerBase.dateRegister');

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
      Atom(name: '_RegisterMedicineControllerBase.nameMedicine');

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

  final _$dosageAtom = Atom(name: '_RegisterMedicineControllerBase.dosage');

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
      Atom(name: '_RegisterMedicineControllerBase.timeMedicine');

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

  final _$dateStartAtom =
      Atom(name: '_RegisterMedicineControllerBase.dateStart');

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

  final _$dateEndAtom = Atom(name: '_RegisterMedicineControllerBase.dateEnd');

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
      Atom(name: '_RegisterMedicineControllerBase.numberPills');

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
      Atom(name: '_RegisterMedicineControllerBase.hasmedicineContinuing');

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
      AsyncAction('_RegisterMedicineControllerBase.changeImageDoc');

  @override
  Future<void> changeImageDoc() {
    return _$changeImageDocAsyncAction.run(() => super.changeImageDoc());
  }

  final _$saveMedicineAsyncAction =
      AsyncAction('_RegisterMedicineControllerBase.saveMedicine');

  @override
  Future<void> saveMedicine() {
    return _$saveMedicineAsyncAction.run(() => super.saveMedicine());
  }

  final _$_RegisterMedicineControllerBaseActionController =
      ActionController(name: '_RegisterMedicineControllerBase');

  @override
  void changeUserId(String value) {
    final _$actionInfo = _$_RegisterMedicineControllerBaseActionController
        .startAction(name: '_RegisterMedicineControllerBase.changeUserId');
    try {
      return super.changeUserId(value);
    } finally {
      _$_RegisterMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_RegisterMedicineControllerBaseActionController
        .startAction(name: '_RegisterMedicineControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_RegisterMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNameMedicine(String value) {
    final _$actionInfo =
        _$_RegisterMedicineControllerBaseActionController.startAction(
            name: '_RegisterMedicineControllerBase.changeNameMedicine');
    try {
      return super.changeNameMedicine(value);
    } finally {
      _$_RegisterMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDosage(String value) {
    final _$actionInfo = _$_RegisterMedicineControllerBaseActionController
        .startAction(name: '_RegisterMedicineControllerBase.changeDosage');
    try {
      return super.changeDosage(value);
    } finally {
      _$_RegisterMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTimeMedicine(String time) {
    final _$actionInfo =
        _$_RegisterMedicineControllerBaseActionController.startAction(
            name: '_RegisterMedicineControllerBase.changeTimeMedicine');
    try {
      return super.changeTimeMedicine(time);
    } finally {
      _$_RegisterMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDateStart(String value) {
    final _$actionInfo = _$_RegisterMedicineControllerBaseActionController
        .startAction(name: '_RegisterMedicineControllerBase.changeDateStart');
    try {
      return super.changeDateStart(value);
    } finally {
      _$_RegisterMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDateEnd(String value) {
    final _$actionInfo = _$_RegisterMedicineControllerBaseActionController
        .startAction(name: '_RegisterMedicineControllerBase.changeDateEnd');
    try {
      return super.changeDateEnd(value);
    } finally {
      _$_RegisterMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNumberPills(String value) {
    final _$actionInfo = _$_RegisterMedicineControllerBaseActionController
        .startAction(name: '_RegisterMedicineControllerBase.changeNumberPills');
    try {
      return super.changeNumberPills(value);
    } finally {
      _$_RegisterMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeHasMedicineContinuing(bool value) {
    final _$actionInfo =
        _$_RegisterMedicineControllerBaseActionController.startAction(
            name:
                '_RegisterMedicineControllerBase.changeHasMedicineContinuing');
    try {
      return super.changeHasMedicineContinuing(value);
    } finally {
      _$_RegisterMedicineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userId: ${userId},
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
