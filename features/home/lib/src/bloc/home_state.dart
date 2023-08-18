import 'package:core/core.dart';
import 'package:domain/domain.dart';

class HomeState extends Equatable {
  final List<DishModel> dishes;
  final bool isLoading;

  HomeState({
    required this.dishes,
    required this.isLoading,
  });
  HomeState copyWith({
    List<DishModel>? dishes,
    bool? isLoading,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      dishes: dishes ?? this.dishes,
    );
  }

  @override
  List<Object> get props => <Object>[
        dishes,
        isLoading,
      ];
}
