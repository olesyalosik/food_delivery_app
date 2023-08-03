class DishEntity {
  final int id;
  final String name;
  final String imageURL;
  final double cost;
  final String? description;
  final List<String>? ingredients;
  final String section;

  DishEntity({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.cost,
    this.description,
    this.ingredients,
    required this.section,
  });
}
