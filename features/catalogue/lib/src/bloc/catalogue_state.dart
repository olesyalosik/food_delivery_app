import 'package:core/core.dart';
import 'package:domain/domain.dart';

class CatalogueState extends Equatable {
  final List<DishModel> dishes;
  final bool isLoading;

  CatalogueState({
    required this.dishes,
    required this.isLoading,
  });
  CatalogueState copyWith({
    List<DishModel>? dishes,
    bool? isLoading,
  }) {
    return CatalogueState(
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
