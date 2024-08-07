import 'package:big_cart_app/model/address.dart';
import 'package:big_cart_app/model/category.dart';
import 'package:big_cart_app/model/order.dart';
import 'package:big_cart_app/model/order_status.dart';
import 'package:big_cart_app/model/payment_type.dart';
import 'package:big_cart_app/model/product.dart';
import 'package:big_cart_app/model/transaction.dart';
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

  static List<Transaction> transactions = [
    Transaction(
      id: 1,
      paymentType: const PaymentType(
        id: 1,
        name: TextStrings.masterCard,
        imagePath: ImageStrings.masterCard,
      ),
      transactionDate: DateTime(2024, 07, 28, 11, 57),
      amount: 89.00,
    ),
    Transaction(
      id: 2,
      paymentType: const PaymentType(
        id: 2,
        name: TextStrings.visa,
        imagePath: ImageStrings.visa,
      ),
      transactionDate: DateTime(2024, 07, 28, 11, 57),
      amount: 109.00,
    ),
    Transaction(
      id: 3,
      paymentType: const PaymentType(
        id: 3,
        name: TextStrings.paypal,
        imagePath: ImageStrings.paypal,
      ),
      transactionDate: DateTime(2024, 07, 28, 11, 57),
      amount: 567.00,
    ),
    Transaction(
      id: 4,
      paymentType: const PaymentType(
        id: 3,
        name: TextStrings.paypal,
        imagePath: ImageStrings.paypal,
      ),
      transactionDate: DateTime(2024, 07, 28, 11, 57),
      amount: 567.00,
    ),
    Transaction(
      id: 5,
      paymentType: const PaymentType(
        id: 2,
        name: TextStrings.visa,
        imagePath: ImageStrings.visa,
      ),
      transactionDate: DateTime(2024, 07, 28, 20, 15),
      amount: 109.00,
    ),
    Transaction(
      id: 6,
      paymentType: const PaymentType(
        id: 1,
        name: TextStrings.masterCard,
        imagePath: ImageStrings.masterCard,
      ),
      transactionDate: DateTime(2024, 07, 25, 15, 26),
      amount: 89.00,
    ),
  ]..sort((a, b) => b.transactionDate.compareTo(a.transactionDate));

  static const List<Address> addresses = [
    Address(
      id: 1,
      name: 'Russell',
      streetAddress: '2811 Crescent Day LA Port',
      city: 'California',
      zipCode: '77571',
      phoneNumber: '+1 202 555 0142',
      country: 'GH',
    ),
    Address(
      id: 2,
      name: 'Russell',
      streetAddress: '2811 Crescent Day LA Port',
      city: 'California',
      zipCode: '77571',
      phoneNumber: '+1 202 555 0142',
      country: 'NG',
    ),
    Address(
      id: 3,
      name: 'Russell',
      streetAddress: '2811 Crescent Day LA Port',
      city: 'California',
      zipCode: '77571',
      phoneNumber: '+1 202 555 0142',
      country: 'US',
    ),
  ];

  static List<Order> orders = [
    Order(
      orderId: 1,
      customerId: 1,
      products: const [
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
          cartQuantity: 5,
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
          cartQuantity: 1,
        ),
      ],
      shippingAddress: const Address(
        id: 1,
        name: 'Russell',
        streetAddress: '2811 Crescent Day LA Port',
        city: 'California',
        zipCode: '77571',
        phoneNumber: '+1 202 555 0142',
        country: 'GH',
      ),
      trackingNumber: "TRACK123456",
      orderStatuses: [
        OrderStatus(orderStage: OrderStage.placed, date: DateTime(2024, 07, 30, 15, 26)),
        OrderStatus(orderStage: OrderStage.confirmed, date: DateTime(2024, 07, 30, 15, 26)),
        OrderStatus(orderStage: OrderStage.shipped, date: DateTime(2024, 07, 30, 15, 26)),
        OrderStatus(orderStage: OrderStage.delivery, date: DateTime(2024, 07, 30, 15, 26)),
        OrderStatus(orderStage: OrderStage.delivered, date: DateTime(2024, 07, 30, 15, 26)),
      ],
      orderDate: DateTime(2024, 07, 30, 15, 26),
      deliveryDate: DateTime(2024, 07, 30, 15, 26),
    ),
    Order(
      orderId: 2,
      customerId: 2,
      products: const [
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
          cartQuantity: 2,
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
          cartQuantity: 3,
        ),
      ],
      shippingAddress: const Address(
        id: 1,
        name: 'Russell',
        streetAddress: '2811 Crescent Day LA Port',
        city: 'California',
        zipCode: '77571',
        phoneNumber: '+1 202 555 0142',
        country: 'GH',
      ),
      trackingNumber: "TRACK123457",
      orderStatuses: [
        OrderStatus(orderStage: OrderStage.placed, date: DateTime(2024, 07, 31, 15, 26)),
        OrderStatus(orderStage: OrderStage.confirmed, date: DateTime(2024, 07, 31, 15, 26)),
        OrderStatus(orderStage: OrderStage.shipped, date: DateTime(2024, 07, 31, 15, 26)),
        const OrderStatus(orderStage: OrderStage.delivery, date: null),
        const OrderStatus(orderStage: OrderStage.delivered, date: null),
      ],
      orderDate: DateTime(2024, 07, 31, 15, 26),
      deliveryDate: null,
    ),
    Order(
      orderId: 3,
      customerId: 3,
      products: const [
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
          cartQuantity: 10,
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
          cartQuantity: 3,
        ),
      ],
      shippingAddress: const Address(
        id: 1,
        name: 'Russell',
        streetAddress: '2811 Crescent Day LA Port',
        city: 'California',
        zipCode: '77571',
        phoneNumber: '+1 202 555 0142',
        country: 'GH',
      ),
      trackingNumber: "TRACK123458",
      orderStatuses: [
        OrderStatus(orderStage: OrderStage.placed, date: DateTime(2024, 08, 01, 10, 30)),
        const OrderStatus(orderStage: OrderStage.confirmed, date: null),
        const OrderStatus(orderStage: OrderStage.shipped, date: null),
        const OrderStatus(orderStage: OrderStage.delivery, date: null),
        const OrderStatus(orderStage: OrderStage.delivered, date: null),
      ],
      orderDate: DateTime(2024, 08, 01, 10, 30),
      deliveryDate: null,
    ),
  ]..sort((a, b) => b.orderDate.compareTo(a.orderDate));
}
