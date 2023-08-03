import 'package:core/core.dart';

class DishModel extends Equatable {
  final int id;
  final String name;
  final String imageURL;
  final double cost;
  final String description;
  final List<String> ingredients;
  final String section;

  DishModel({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.cost,
    required this.description,
    required this.ingredients,
    required this.section,
  });

  @override
  List<Object> get props => <Object>[
        id,
        name,
        imageURL,
        cost,
        description,
        ingredients,
        section,
      ];
}
