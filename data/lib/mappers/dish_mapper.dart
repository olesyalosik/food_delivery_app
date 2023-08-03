import 'package:data/entities/dish_entity.dart';
import 'package:domain/domain.dart';

class DishMapper {
  static DishEntity mapModelToEntity(DishModel dishModel) {
    return DishEntity(
      id: dishModel.id,
      name: dishModel.name,
      imageURL: dishModel.imageURL,
      cost: dishModel.cost,
      section: dishModel.section,
    );
  }

  static DishModel mapEntityToModel(DishEntity dishEntity) {
    return DishModel(
      id: dishEntity.id,
      name: dishEntity.name,
      imageURL: dishEntity.imageURL,
      cost: dishEntity.cost,
      section: dishEntity.section,
    );
  }
}
