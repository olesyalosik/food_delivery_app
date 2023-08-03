import '../../entities/dish_entity.dart';

abstract class RemoteProvider {
  Future<List<DishEntity>> getAllDishes();
}
