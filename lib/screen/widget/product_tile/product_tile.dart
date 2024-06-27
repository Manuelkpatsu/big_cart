import 'package:big_cart_app/model/product.dart';
import 'package:big_cart_app/screen/widget/favorite_button.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

import 'widget/discounted_product.dart';
import 'widget/minus_add_button.dart';
import 'widget/new_product.dart';
import 'widget/product_image.dart';
import 'widget/product_name_text.dart';
import 'widget/product_price_text.dart';
import 'widget/product_quantity.dart';
import 'widget/product_weight_text.dart';

class ProductTile extends StatelessWidget {
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;
  final Product product;

  const ProductTile({
    super.key,
    required this.onTap,
    required this.onFavoriteTap,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        color: Colors.white,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                ProductImage(imagePath: product.imagePath),
                const SizedBox(height: 10),
                ProductPriceText(amount: product.amount),
                ProductNameText(name: product.name),
                ProductWeightText(weight: product.weight),
                const SizedBox(height: 7),
                const Divider(height: 0, color: CustomColor.borderColor),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MinusAddButton(
                        onPressed: product.cartQuantity < 1 ? null : () {},
                        iconData: Icons.remove,
                      ),
                      ProductQuantity(quantity: product.cartQuantity),
                      MinusAddButton(
                        onPressed: product.cartQuantity > product.quantity ? null : () {},
                        iconData: Icons.add,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 5,
              right: 5,
              child: FavoriteButton(favorite: product.favorite, onPressed: onFavoriteTap),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: product.discount != 0
                  ? DiscountedProduct(discount: product.discount)
                  : product.newProduct
                      ? const NewProduct()
                      : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
