import 'package:core/core.dart';
import 'package:domain/domain.dart';

import 'home_state.dart';
import 'home_event.dart';

export 'home_state.dart';
export 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAllDishesUseCase _getAllDishesUseCase;

  HomeBloc({
    required GetAllDishesUseCase getAllDishesUseCase,
  })  : _getAllDishesUseCase = getAllDishesUseCase,
        super(
          HomeState(
            dishes: const <DishModel>[],
            isLoading: false,
          ),
        ) {
    on<InitEvent>(_onInitEvent);

    add(InitEvent());
  }

  Future<void> _onInitEvent(
    InitEvent event,
    Emitter<HomeState> emit,
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
}
