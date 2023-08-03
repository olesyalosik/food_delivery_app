import 'package:domain/domain.dart';
import 'package:domain/usecases/export_usecases.dart';

class GetAllDishesUseCase extends FutureUseCase<NoParams, List<DishModel>> {
  final DishRepository _dishRepository;

  GetAllDishesUseCase({
    required DishRepository dishRepository,
  }) : _dishRepository = dishRepository;

  @override
  Future<List<DishModel>> execute(NoParams input) async {
    return await _dishRepository.getAllDishes();
  }
}
