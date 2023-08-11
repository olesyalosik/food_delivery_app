import 'package:data/entities/dish_entity.dart';
import 'package:data/mappers/dish_mapper.dart';
import 'package:data/providers/remote/firebase_provider.dart';
import 'package:domain/domain.dart';

class DishRepositoryImpl extends DishRepository {
  final FirebaseProvider _firebaseProvider;

  DishRepositoryImpl({
    required FirebaseProvider firebaseProvider,
  }) : _firebaseProvider = firebaseProvider;

  @override
  Future<List<DishModel>> getAllDishes() async {
    final List<DishEntity> dishEntities =
        await _firebaseProvider.getAllDishes();

    final List<DishModel> dishModels = dishEntities
        .map((DishEntity dishEntity) => DishMapper.mapEntityToModel(dishEntity))
        .toList();

    return dishModels;
  }
}
