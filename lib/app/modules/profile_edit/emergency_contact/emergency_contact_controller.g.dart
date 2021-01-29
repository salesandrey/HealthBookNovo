// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_contact_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $EmergencyContactController = BindInject(
  (i) => EmergencyContactController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmergencyContactController on _EmergencyContactControllerBase, Store {
  final _$userIDAtom = Atom(name: '_EmergencyContactControllerBase.userID');

  @override
  String get userID {
    _$userIDAtom.reportRead();
    return super.userID;
  }

  @override
  set userID(String value) {
    _$userIDAtom.reportWrite(value, super.userID, () {
      super.userID = value;
    });
  }

  final _$contactsAtom = Atom(name: '_EmergencyContactControllerBase.contacts');

  @override
  ObservableList<EmergencyContactModel> get contacts {
    _$contactsAtom.reportRead();
    return super.contacts;
  }

  @override
  set contacts(ObservableList<EmergencyContactModel> value) {
    _$contactsAtom.reportWrite(value, super.contacts, () {
      super.contacts = value;
    });
  }

  final _$getContactsAsyncAction =
      AsyncAction('_EmergencyContactControllerBase.getContacts');

  @override
  Future<void> getContacts() {
    return _$getContactsAsyncAction.run(() => super.getContacts());
  }

  final _$removeContactAsyncAction =
      AsyncAction('_EmergencyContactControllerBase.removeContact');

  @override
  Future<void> removeContact(EmergencyContactModel contact) {
    return _$removeContactAsyncAction.run(() => super.removeContact(contact));
  }

  final _$_EmergencyContactControllerBaseActionController =
      ActionController(name: '_EmergencyContactControllerBase');

  @override
  void changeUserID(String value) {
    final _$actionInfo = _$_EmergencyContactControllerBaseActionController
        .startAction(name: '_EmergencyContactControllerBase.changeUserID');
    try {
      return super.changeUserID(value);
    } finally {
      _$_EmergencyContactControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userID: ${userID},
contacts: ${contacts}
    ''';
  }
}
