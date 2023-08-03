import 'package:data/entities/dish_entity.dart';
import 'remote_provider.dart';

class FirebaseProvider implements RemoteProvider {
  @override
  Future<List<DishEntity>> getAllDishes() async {
    return [];
  }
}
