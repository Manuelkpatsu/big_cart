import 'package:equatable/equatable.dart';

import 'category.dart';

class Product extends Equatable {
  final int id;
  final String name;
  final String imagePath;
  final Category category;
  final double amount;
  final bool favorite;
  final int quantity;
  final String description;
  final bool newProduct;
  final int discount;
  final String weight;
  final double rating;
  final int numberOfReviews;
  final int cartQuantity;

  const Product({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.category,
    required this.amount,
    required this.favorite,
    required this.quantity,
    required this.description,
    required this.newProduct,
    required this.discount,
    required this.weight,
    required this.rating,
    required this.numberOfReviews,
    required this.cartQuantity,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        imagePath,
        category,
        amount,
        favorite,
        quantity,
        description,
        newProduct,
        discount,
        weight,
        rating,
        numberOfReviews,
        cartQuantity,
      ];
}
