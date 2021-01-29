// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_edit_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ProfileEditController = BindInject(
  (i) => ProfileEditController(storage: i<ILocalStorage>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileEditController on _ProfileEditControllerBase, Store {
  final _$storageAtom = Atom(name: '_ProfileEditControllerBase.storage');

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

  final _$diseasesAtom = Atom(name: '_ProfileEditControllerBase.diseases');

  @override
  ObservableList<DiseaseModel> get diseases {
    _$diseasesAtom.reportRead();
    return super.diseases;
  }

  @override
  set diseases(ObservableList<DiseaseModel> value) {
    _$diseasesAtom.reportWrite(value, super.diseases, () {
      super.diseases = value;
    });
  }

  final _$healthPlaneAtom =
      Atom(name: '_ProfileEditControllerBase.healthPlane');

  @override
  ObservableList<HealthPlaneModel> get healthPlane {
    _$healthPlaneAtom.reportRead();
    return super.healthPlane;
  }

  @override
  set healthPlane(ObservableList<HealthPlaneModel> value) {
    _$healthPlaneAtom.reportWrite(value, super.healthPlane, () {
      super.healthPlane = value;
    });
  }

  final _$loadingAtom = Atom(name: '_ProfileEditControllerBase.loading');

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

  final _$currentUserAtom =
      Atom(name: '_ProfileEditControllerBase.currentUser');

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

  final _$currentImageAtom =
      Atom(name: '_ProfileEditControllerBase.currentImage');

  @override
  File get currentImage {
    _$currentImageAtom.reportRead();
    return super.currentImage;
  }

  @override
  set currentImage(File value) {
    _$currentImageAtom.reportWrite(value, super.currentImage, () {
      super.currentImage = value;
    });
  }

  final _$phoneAtom = Atom(name: '_ProfileEditControllerBase.phone');

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

  final _$cellphoneAtom = Atom(name: '_ProfileEditControllerBase.cellphone');

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

  final _$addressAtom = Atom(name: '_ProfileEditControllerBase.address');

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

  final _$neighborhoodAtom =
      Atom(name: '_ProfileEditControllerBase.neighborhood');

  @override
  String get neighborhood {
    _$neighborhoodAtom.reportRead();
    return super.neighborhood;
  }

  @override
  set neighborhood(String value) {
    _$neighborhoodAtom.reportWrite(value, super.neighborhood, () {
      super.neighborhood = value;
    });
  }

  final _$cityAtom = Atom(name: '_ProfileEditControllerBase.city');

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

  final _$ufAtom = Atom(name: '_ProfileEditControllerBase.uf');

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
      Atom(name: '_ProfileEditControllerBase.numberHouse');

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

  final _$complementAtom = Atom(name: '_ProfileEditControllerBase.complement');

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

  final _$bloodGroupAtom = Atom(name: '_ProfileEditControllerBase.bloodGroup');

  @override
  String get bloodGroup {
    _$bloodGroupAtom.reportRead();
    return super.bloodGroup;
  }

  @override
  set bloodGroup(String value) {
    _$bloodGroupAtom.reportWrite(value, super.bloodGroup, () {
      super.bloodGroup = value;
    });
  }

  final _$diseasesTileAtom =
      Atom(name: '_ProfileEditControllerBase.diseasesTile');

  @override
  ObservableList<TileDiseaseWidget> get diseasesTile {
    _$diseasesTileAtom.reportRead();
    return super.diseasesTile;
  }

  @override
  set diseasesTile(ObservableList<TileDiseaseWidget> value) {
    _$diseasesTileAtom.reportWrite(value, super.diseasesTile, () {
      super.diseasesTile = value;
    });
  }

  final _$connectSUSAtom = Atom(name: '_ProfileEditControllerBase.connectSUS');

  @override
  bool get connectSUS {
    _$connectSUSAtom.reportRead();
    return super.connectSUS;
  }

  @override
  set connectSUS(bool value) {
    _$connectSUSAtom.reportWrite(value, super.connectSUS, () {
      super.connectSUS = value;
    });
  }

  final _$haveHealthPlaneAtom =
      Atom(name: '_ProfileEditControllerBase.haveHealthPlane');

  @override
  bool get haveHealthPlane {
    _$haveHealthPlaneAtom.reportRead();
    return super.haveHealthPlane;
  }

  @override
  set haveHealthPlane(bool value) {
    _$haveHealthPlaneAtom.reportWrite(value, super.haveHealthPlane, () {
      super.haveHealthPlane = value;
    });
  }

  final _$operationAtom = Atom(name: '_ProfileEditControllerBase.operation');

  @override
  String get operation {
    _$operationAtom.reportRead();
    return super.operation;
  }

  @override
  set operation(String value) {
    _$operationAtom.reportWrite(value, super.operation, () {
      super.operation = value;
    });
  }

  final _$numberCardAtom = Atom(name: '_ProfileEditControllerBase.numberCard');

  @override
  String get numberCard {
    _$numberCardAtom.reportRead();
    return super.numberCard;
  }

  @override
  set numberCard(String value) {
    _$numberCardAtom.reportWrite(value, super.numberCard, () {
      super.numberCard = value;
    });
  }

  final _$cardFileAtom = Atom(name: '_ProfileEditControllerBase.cardFile');

  @override
  File get cardFile {
    _$cardFileAtom.reportRead();
    return super.cardFile;
  }

  @override
  set cardFile(File value) {
    _$cardFileAtom.reportWrite(value, super.cardFile, () {
      super.cardFile = value;
    });
  }

  final _$getDiseasesAsyncAction =
      AsyncAction('_ProfileEditControllerBase.getDiseases');

  @override
  Future<void> getDiseases() {
    return _$getDiseasesAsyncAction.run(() => super.getDiseases());
  }

  final _$getHealthPlanAsyncAction =
      AsyncAction('_ProfileEditControllerBase.getHealthPlan');

  @override
  Future<void> getHealthPlan() {
    return _$getHealthPlanAsyncAction.run(() => super.getHealthPlan());
  }

  final _$getCurrentUserAsyncAction =
      AsyncAction('_ProfileEditControllerBase.getCurrentUser');

  @override
  Future<void> getCurrentUser() {
    return _$getCurrentUserAsyncAction.run(() => super.getCurrentUser());
  }

  final _$takePictureAsyncAction =
      AsyncAction('_ProfileEditControllerBase.takePicture');

  @override
  Future<void> takePicture() {
    return _$takePictureAsyncAction.run(() => super.takePicture());
  }

  final _$takeFromGalleryAsyncAction =
      AsyncAction('_ProfileEditControllerBase.takeFromGallery');

  @override
  Future<void> takeFromGallery() {
    return _$takeFromGalleryAsyncAction.run(() => super.takeFromGallery());
  }

  final _$changeCardFileAsyncAction =
      AsyncAction('_ProfileEditControllerBase.changeCardFile');

  @override
  Future<void> changeCardFile() {
    return _$changeCardFileAsyncAction.run(() => super.changeCardFile());
  }

  final _$saveDataAsyncAction =
      AsyncAction('_ProfileEditControllerBase.saveData');

  @override
  Future<void> saveData() {
    return _$saveDataAsyncAction.run(() => super.saveData());
  }

  final _$updateDiseasesAsyncAction =
      AsyncAction('_ProfileEditControllerBase.updateDiseases');

  @override
  Future<void> updateDiseases() {
    return _$updateDiseasesAsyncAction.run(() => super.updateDiseases());
  }

  final _$updateHealthPlaneAsyncAction =
      AsyncAction('_ProfileEditControllerBase.updateHealthPlane');

  @override
  Future<void> updateHealthPlane() {
    return _$updateHealthPlaneAsyncAction.run(() => super.updateHealthPlane());
  }

  final _$_ProfileEditControllerBaseActionController =
      ActionController(name: '_ProfileEditControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePhone(String value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changePhone');
    try {
      return super.changePhone(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCellphone(String value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeCellphone');
    try {
      return super.changeCellphone(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeAddress(String value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeAddress');
    try {
      return super.changeAddress(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNeighborhood(String value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeNeighborhood');
    try {
      return super.changeNeighborhood(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCity(String value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeCity');
    try {
      return super.changeCity(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeUf(String value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeUf');
    try {
      return super.changeUf(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNumberHouse(String value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeNumberHouse');
    try {
      return super.changeNumberHouse(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeComplement(String value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeComplement');
    try {
      return super.changeComplement(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeBloodGroup(String value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeBloodGroup');
    try {
      return super.changeBloodGroup(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNothing(int index) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeNothing');
    try {
      return super.changeNothing(index);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeOthers(int index) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeOthers');
    try {
      return super.changeOthers(index);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void createDiseaseTile() {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.createDiseaseTile');
    try {
      return super.createDiseaseTile();
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeConnectSUS(bool value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeConnectSUS');
    try {
      return super.changeConnectSUS(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeHaveHealthPlane(bool value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeHaveHealthPlane');
    try {
      return super.changeHaveHealthPlane(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeOperation(String value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeOperation');
    try {
      return super.changeOperation(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNumberCard(String value) {
    final _$actionInfo = _$_ProfileEditControllerBaseActionController
        .startAction(name: '_ProfileEditControllerBase.changeNumberCard');
    try {
      return super.changeNumberCard(value);
    } finally {
      _$_ProfileEditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
storage: ${storage},
diseases: ${diseases},
healthPlane: ${healthPlane},
loading: ${loading},
currentUser: ${currentUser},
currentImage: ${currentImage},
phone: ${phone},
cellphone: ${cellphone},
address: ${address},
neighborhood: ${neighborhood},
city: ${city},
uf: ${uf},
numberHouse: ${numberHouse},
complement: ${complement},
bloodGroup: ${bloodGroup},
diseasesTile: ${diseasesTile},
connectSUS: ${connectSUS},
haveHealthPlane: ${haveHealthPlane},
operation: ${operation},
numberCard: ${numberCard},
cardFile: ${cardFile}
    ''';
  }
}
