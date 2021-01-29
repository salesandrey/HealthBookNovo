import 'package:mobx/mobx.dart';

part 'tile_disease_model.g.dart';


class TileDiseaseModel = _TileDiseaseModelBase
    with _$TileDiseaseModel;

abstract class _TileDiseaseModelBase with Store {


  _TileDiseaseModelBase({this.title,this.check,this.changeAnother});

  @observable
  String title;

  @observable
  bool check;

  @action
  setTitle(String value){
    title = value;
  }

  @action
  void changeOther(bool value){
    check = value;
  }

  @action
  setCheck(bool value){
    check = value;
    if(check)
      changeAnother();
  }

  @observable
  Function changeAnother;
}
