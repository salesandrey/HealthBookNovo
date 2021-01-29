// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_document_widget_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardDocumentWidgetController
    on _CardDocumentWidgetControllerBase, Store {
  final _$documentAtom =
      Atom(name: '_CardDocumentWidgetControllerBase.document');

  @override
  DocumentModel get document {
    _$documentAtom.reportRead();
    return super.document;
  }

  @override
  set document(DocumentModel value) {
    _$documentAtom.reportWrite(value, super.document, () {
      super.document = value;
    });
  }

  final _$navigatorAtom =
      Atom(name: '_CardDocumentWidgetControllerBase.navigator');

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

  final _$showAtom = Atom(name: '_CardDocumentWidgetControllerBase.show');

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

  final _$_CardDocumentWidgetControllerBaseActionController =
      ActionController(name: '_CardDocumentWidgetControllerBase');

  @override
  void showOptions(bool value) {
    final _$actionInfo = _$_CardDocumentWidgetControllerBaseActionController
        .startAction(name: '_CardDocumentWidgetControllerBase.showOptions');
    try {
      return super.showOptions(value);
    } finally {
      _$_CardDocumentWidgetControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
document: ${document},
navigator: ${navigator},
show: ${show}
    ''';
  }
}
