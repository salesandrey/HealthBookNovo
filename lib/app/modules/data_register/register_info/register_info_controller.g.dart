// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_info_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterInfoController on _RegisterInfoControllerBase, Store {
  final _$loadingAtom = Atom(name: '_RegisterInfoControllerBase.loading');

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

  final _$imageAtom = Atom(name: '_RegisterInfoControllerBase.image');

  @override
  File get image {
    _$imageAtom.reportRead();
    return super.image;
  }

  @override
  set image(File value) {
    _$imageAtom.reportWrite(value, super.image, () {
      super.image = value;
    });
  }

  final _$docFrontAtom = Atom(name: '_RegisterInfoControllerBase.docFront');

  @override
  File get docFront {
    _$docFrontAtom.reportRead();
    return super.docFront;
  }

  @override
  set docFront(File value) {
    _$docFrontAtom.reportWrite(value, super.docFront, () {
      super.docFront = value;
    });
  }

  final _$docBackAtom = Atom(name: '_RegisterInfoControllerBase.docBack');

  @override
  File get docBack {
    _$docBackAtom.reportRead();
    return super.docBack;
  }

  @override
  set docBack(File value) {
    _$docBackAtom.reportWrite(value, super.docBack, () {
      super.docBack = value;
    });
  }

  final _$nameAtom = Atom(name: '_RegisterInfoControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$cpfAtom = Atom(name: '_RegisterInfoControllerBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$dateBirthdayAtom =
      Atom(name: '_RegisterInfoControllerBase.dateBirthday');

  @override
  String get dateBirthday {
    _$dateBirthdayAtom.reportRead();
    return super.dateBirthday;
  }

  @override
  set dateBirthday(String value) {
    _$dateBirthdayAtom.reportWrite(value, super.dateBirthday, () {
      super.dateBirthday = value;
    });
  }

  final _$sexAtom = Atom(name: '_RegisterInfoControllerBase.sex');

  @override
  String get sex {
    _$sexAtom.reportRead();
    return super.sex;
  }

  @override
  set sex(String value) {
    _$sexAtom.reportWrite(value, super.sex, () {
      super.sex = value;
    });
  }

  final _$cellphoneAtom = Atom(name: '_RegisterInfoControllerBase.cellphone');

  @override
  String get cellphone {
    _$cellphoneAtom.reportRead();
    return super.cellphone;
  }

  @override
  set cellphone(String value) {
    _$cellphoneAtom.reportWrite(value, super.cellphone, () {
      super.cellphone = value;
    });
  }

  final _$phoneAtom = Atom(name: '_RegisterInfoControllerBase.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$addressAtom = Atom(name: '_RegisterInfoControllerBase.address');

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

  final _$neighAtom = Atom(name: '_RegisterInfoControllerBase.neigh');

  @override
  String get neigh {
    _$neighAtom.reportRead();
    return super.neigh;
  }

  @override
  set neigh(String value) {
    _$neighAtom.reportWrite(value, super.neigh, () {
      super.neigh = value;
    });
  }

  final _$cityAtom = Atom(name: '_RegisterInfoControllerBase.city');

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

  final _$ufAtom = Atom(name: '_RegisterInfoControllerBase.uf');

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

  final _$numberHouseAtom =
      Atom(name: '_RegisterInfoControllerBase.numberHouse');

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

  final _$complementAtom = Atom(name: '_RegisterInfoControllerBase.complement');

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

  final _$takePictureAsyncAction =
      AsyncAction('_RegisterInfoControllerBase.takePicture');

  @override
  Future<void> takePicture(String type) {
    return _$takePictureAsyncAction.run(() => super.takePicture(type));
  }

  final _$useFromGalleryAsyncAction =
      AsyncAction('_RegisterInfoControllerBase.useFromGallery');

  @override
  Future<void> useFromGallery(String type) {
    return _$useFromGalleryAsyncAction.run(() => super.useFromGallery(type));
  }

  final _$_RegisterInfoControllerBaseActionController =
      ActionController(name: '_RegisterInfoControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeName(String value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCPF(String value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changeCPF');
    try {
      return super.changeCPF(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDateBirthday(String value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changeDateBirthday');
    try {
      return super.changeDateBirthday(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSex(String value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changeSex');
    try {
      return super.changeSex(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCellphone(String value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changeCellphone');
    try {
      return super.changeCellphone(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePhone(String value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changePhone');
    try {
      return super.changePhone(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeAddress(String value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changeAddress');
    try {
      return super.changeAddress(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNeigh(String value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changeNeigh');
    try {
      return super.changeNeigh(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCity(String value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changeCity');
    try {
      return super.changeCity(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeUF(String value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changeUF');
    try {
      return super.changeUF(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNumberHouse(String value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changeNumberHouse');
    try {
      return super.changeNumberHouse(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeComplement(String value) {
    final _$actionInfo = _$_RegisterInfoControllerBaseActionController
        .startAction(name: '_RegisterInfoControllerBase.changeComplement');
    try {
      return super.changeComplement(value);
    } finally {
      _$_RegisterInfoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
image: ${image},
docFront: ${docFront},
docBack: ${docBack},
name: ${name},
cpf: ${cpf},
dateBirthday: ${dateBirthday},
sex: ${sex},
cellphone: ${cellphone},
phone: ${phone},
address: ${address},
neigh: ${neigh},
city: ${city},
uf: ${uf},
numberHouse: ${numberHouse},
complement: ${complement}
    ''';
  }
}
