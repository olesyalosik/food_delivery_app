class DishEntity {
  final int id;
  final String name;
  final String imageURL;
  final double cost;
  final String description;
  final List<String> ingredients;
  final String section;

  DishEntity({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.cost,
    required this.description,
    required this.ingredients,
    required this.section,
  });

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "imageURL": imageURL,
      "cost": cost,
      "description": description,
      "ingredients": ingredients,
      "section": section,
    };
  }

  factory DishEntity.fromJson(
    Map<String, dynamic> json,
  ) {
    return DishEntity(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      imageURL: json['imageURL'] ?? '',
      cost: json['cost'] ?? 0.0,
      description: json['description'] ?? '',
      ingredients: List<String>.from(json['ingredients'] ?? []),
      section: json['section'] ?? '',
    );
  }
}
