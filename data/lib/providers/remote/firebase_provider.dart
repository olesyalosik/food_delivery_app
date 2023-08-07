import 'package:core/core.dart';
import 'package:data/entities/dish_entity.dart';
import 'remote_provider.dart';

class FirebaseProvider implements RemoteProvider {
  final FirebaseFirestore _firebaseFirestore;

  FirebaseProvider({
    required FirebaseFirestore firebaseFirestore,
  }) : _firebaseFirestore = firebaseFirestore;

  @override
  Future<List<DishEntity>> getAllDishes() async {
    final result = await _firebaseFirestore.collection('dishes').get();
    List<DishEntity> dishes = result.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> snapshot) =>
            DishEntity.fromJson(snapshot.data()))
        .toList();
    return dishes;
  }
}
