import 'package:big_cart_app/model/category.dart';
import 'package:big_cart_app/model/product.dart';
import 'package:big_cart_app/screen/app/account/account_screen.dart';
import 'package:big_cart_app/screen/app/home/home_screen.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'image_strings.dart';

class AppData {
  AppData._();

  // Bottom Navigation Bar
  static const List<String> bottomNavBarLabels = [
    TextStrings.home,
    TextStrings.store,
    TextStrings.favorites,
    TextStrings.account,
  ];
  static const List<Widget> screens = [
    HomeScreen(),
    Center(child: Text(TextStrings.store)),
    Center(child: Text(TextStrings.favorites)),
    AccountScreen(),
  ];
  static const List<IconData> bottomNavBarIcons = [
    Icons.home_outlined,
    Icons.shopping_bag_outlined,
    Icons.favorite_border_outlined,
    Icons.account_circle_outlined,
  ];

  // Categories
  static const List<Category> categories = [
    Category(
      id: 1,
      imagePath: ImageStrings.vegetablesImage,
      name: TextStrings.vegetables,
      color: CustomColor.vegetablesColor,
    ),
    Category(
      id: 2,
      imagePath: ImageStrings.fruitsImage,
      name: TextStrings.fruits,
      color: CustomColor.fruitsColor,
    ),
    Category(
      id: 3,
      imagePath: ImageStrings.beveragesImage,
      name: TextStrings.beverages,
      color: CustomColor.beveragesColor,
    ),
    Category(
      id: 4,
      imagePath: ImageStrings.groceryImage,
      name: TextStrings.grocery,
      color: CustomColor.groceryColor,
    ),
    Category(
      id: 5,
      imagePath: ImageStrings.edibleOilImage,
      name: TextStrings.edibleOil,
      color: CustomColor.edibleOilColor,
    ),
    Category(
      id: 6,
      imagePath: ImageStrings.householdImage,
      name: TextStrings.household,
      color: CustomColor.householdColor,
    ),
    Category(
      id: 7,
      imagePath: ImageStrings.babyCareImage,
      name: TextStrings.babyCare,
      color: CustomColor.babyCareColor,
    ),
  ];

  // Products
  static const List<Product> products = [
    Product(
      id: 1,
      name: TextStrings.freshPeach,
      imagePath: ImageStrings.freshPeachImage,
      category: Category(
        id: 2,
        imagePath: ImageStrings.fruitsImage,
        name: TextStrings.fruits,
        color: CustomColor.fruitsColor,
      ),
      amount: 8.00,
      favorite: false,
      quantity: 36,
      description: TextStrings.productDescription,
      newProduct: false,
      discount: 0,
      weight: 'dozen',
      rating: 4.5,
      numberOfReviews: 89,
      cartQuantity: 0,
    ),
    Product(
      id: 2,
      name: TextStrings.avocado,
      imagePath: ImageStrings.avocadoImage,
      category: Category(
        id: 1,
        imagePath: ImageStrings.vegetablesImage,
        name: TextStrings.vegetables,
        color: CustomColor.vegetablesColor,
      ),
      amount: 7.00,
      favorite: false,
      quantity: 36,
      description: TextStrings.productDescription,
      newProduct: true,
      discount: 0,
      weight: '2.0 lbs',
      rating: 4.5,
      numberOfReviews: 89,
      cartQuantity: 1,
    ),
    Product(
      id: 3,
      name: TextStrings.pineapple,
      imagePath: ImageStrings.pineappleImage,
      category: Category(
        id: 2,
        imagePath: ImageStrings.fruitsImage,
        name: TextStrings.fruits,
        color: CustomColor.fruitsColor,
      ),
      amount: 9.90,
      favorite: true,
      quantity: 36,
      description: TextStrings.productDescription,
      newProduct: false,
      discount: 0,
      weight: '1.50 lbs',
      rating: 4.5,
      numberOfReviews: 89,
      cartQuantity: 0,
    ),
    Product(
      id: 4,
      name: TextStrings.blackGrapes,
      imagePath: ImageStrings.blackGrapesImage,
      category: Category(
        id: 2,
        imagePath: ImageStrings.fruitsImage,
        name: TextStrings.fruits,
        color: CustomColor.fruitsColor,
      ),
      amount: 7.05,
      favorite: false,
      quantity: 36,
      description: TextStrings.productDescription,
      newProduct: false,
      discount: 16,
      weight: '5.0 lbs',
      rating: 4.5,
      numberOfReviews: 89,
      cartQuantity: 0,
    ),
    Product(
      id: 5,
      name: TextStrings.broccoli,
      imagePath: ImageStrings.broccoliImage,
      category: Category(
        id: 1,
        imagePath: ImageStrings.vegetablesImage,
        name: TextStrings.vegetables,
        color: CustomColor.vegetablesColor,
      ),
      amount: 3.00,
      favorite: true,
      quantity: 36,
      description: TextStrings.productDescription,
      newProduct: false,
      discount: 0,
      weight: '1 kg',
      rating: 4.5,
      numberOfReviews: 89,
      cartQuantity: 1,
    ),
  ];
}
