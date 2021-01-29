import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/models/document_model.dart';

part 'card_document_widget_controller.g.dart';


class CardDocumentWidgetController = _CardDocumentWidgetControllerBase
    with _$CardDocumentWidgetController;

abstract class _CardDocumentWidgetControllerBase with Store {


  _CardDocumentWidgetControllerBase({this.document,this.navigator});

  @observable
  DocumentModel document;

  @observable
  Function navigator;

  @observable
  bool show = false;

  @action
  void showOptions(bool value){
    show = !show;
  }

}
