class DishModel {
  final int id;
  final String name;
  final String imageURL;
  final double cost;
  final String? description;
  final List<String>? ingredients;
  final String section;

  DishModel({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.cost,
    this.description,
    this.ingredients,
    required this.section,
  });

  // toJson() {
  //   return {
  //     "Name": name,
  //     "Image": imageURL,
  //     "Cost": cost,
  //     "Description" description,
  //   }
}
