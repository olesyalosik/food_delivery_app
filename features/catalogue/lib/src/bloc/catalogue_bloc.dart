import 'package:core/core.dart';
import 'package:detailed_dish_view/detailed_dish_view.dart';
import 'package:domain/domain.dart';

import 'catalogue_state.dart';
import 'catalogue_event.dart';

export 'catalogue_state.dart';
export 'catalogue_event.dart';

class CatalogueBloc extends Bloc<CatalogueEvent, CatalogueState> {
  final GetAllDishesUseCase _getAllDishesUseCase;

  CatalogueBloc({
    required GetAllDishesUseCase getAllDishesUseCase,
  })  : _getAllDishesUseCase = getAllDishesUseCase,
        super(
          CatalogueState(
            dishes: const <DishModel>[],
            isLoading: false,
          ),
        ) {
    on<InitEvent>(_onInitEvent);
    on<NavigateToDetailedDishEvent>(_onNavigateToDetailedDish);
    add(InitEvent());
  }

  Future<void> _onInitEvent(
    InitEvent event,
    Emitter<CatalogueState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    List<DishModel> dishes =
        await _getAllDishesUseCase.execute(const NoParams());
    emit(
      state.copyWith(
        dishes: dishes,
        isLoading: false,
      ),
    );
  }

  void _onNavigateToDetailedDish(
    NavigateToDetailedDishEvent event,
    Emitter<CatalogueState> emit,
  ) {
    event.context.router.push(
      DetailedDishViewRoute(
        dishModel: event.dishModel,
      ),
    );
  }
}
