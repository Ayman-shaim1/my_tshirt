
enum Gendre { man, woman }

class Product {
  final String id;
  final String nom;
  final String description;
  final Gendre gendre;
  final double price;
  final String image;

  // constructor
  Product({
    required this.id,
    required this.nom,
    required this.description,
    required this.gendre,
    required this.price,
    required this.image,
  });
}
