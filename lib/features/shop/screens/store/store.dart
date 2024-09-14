import 'package:e_commerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_flutter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_flutter/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_flutter/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_flutter/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_flutter/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce_flutter/features/shop/screens/store/widgets/t_brand_card.dart';
import 'package:e_commerce_flutter/utils/constants/colors.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:e_commerce_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../brand/all_brands.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ///Search
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                          text: "Search in Store",
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      ///Featured Brands
                      TSectionHeading(
                          title: "Featured Brands", onPressed: ()=> Get.to(()=> const AllBrandScreen())),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      ///Brand Grid
                      TGridLayout(
                          mainAxisExtent: 60,
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return const TBrandCard(showBorder: true);
                          })
                    ],
                  ),
                ),
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text("Sport")),
                    Tab(child: Text("Furniture")),
                    Tab(child: Text("Electronics")),
                    Tab(child: Text("Clothes")),
                    Tab(child: Text("Cosmetics")),
                  ],
                ),
              )
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
