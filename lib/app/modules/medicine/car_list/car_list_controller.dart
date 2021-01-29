import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:HealthBook/app/modules/medicine/car_store/car_store.dart';
import 'package:HealthBook/app/modules/medicine/rent_car/rent_car_controller.dart';

part 'car_list_controller.g.dart';

@Injectable()
class CarListController = _CarListControllerBase with _$CarListController;

abstract class _CarListControllerBase with Store {

  _CarListControllerBase({this.car,this.rentCarController});

  CarStore car;

  RentCarController rentCarController;

}
