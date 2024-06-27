import 'package:big_cart_app/model/category.dart';
import 'package:big_cart_app/model/product.dart';
import 'package:big_cart_app/screen/widget/product_tile/product_tile.dart';
import 'package:big_cart_app/screen/widget/text_input_field.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/app_data.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/banner_slider.dart';
import 'widget/home_category_tile.dart';
import 'widget/nav_tile.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int position = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        title: TextInputField(
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          labelText: TextStrings.searchKeywords,
          fillColor: CustomColor.backgroundColor,
          prefixIcon: const Icon(CupertinoIcons.search),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tune_rounded),
            splashRadius: 20,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 283,
                width: MediaQuery.of(context).size.width,
                child: BannerSlider(
                  onPageChanged: (index, reason) {
                    setState(() => position = index);
                  },
                  position: position,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(
            child: NavTile(
              title: TextStrings.categories,
              onTap: () {},
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 75,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                scrollDirection: Axis.horizontal,
                itemCount: AppData.categories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 13),
                itemBuilder: (ctx, index) {
                  final Category category = AppData.categories[index];

                  return HomeCategoryTile(onTap: () {}, category: category);
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(
            child: NavTile(
              title: TextStrings.featuredProducts,
              onTap: () {},
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          SliverToBoxAdapter(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 13,
                mainAxisExtent: 230,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: AppData.products.length,
              itemBuilder: (ctx, index) {
                final Product product = AppData.products[index];

                return ProductTile(
                  product: product,
                  onTap: () {},
                  onFavoriteTap: () {},
                );
              },
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],
      ),
    );
  }
}
