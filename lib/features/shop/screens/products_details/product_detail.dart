import 'package:e_commerce_flutter/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_flutter/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce_flutter/features/shop/screens/products_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:e_commerce_flutter/features/shop/screens/products_details/widgets/product_attributes.dart';
import 'package:e_commerce_flutter/features/shop/screens/products_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_flutter/features/shop/screens/products_details/widgets/product_meta_data.dart';
import 'package:e_commerce_flutter/features/shop/screens/products_details/widgets/rating_share_widget.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:e_commerce_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image Slider
            const TProductImageSlider(),

            ///Product Detail
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Rating & Share
                  const TRatingAndShare(),

                  ///Price, Title, Stock and  Brand
                  const TProductsMetaData(),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  ///Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Checkout"))),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Description
                  const TSectionHeading(
                    title: "Description",
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections / 3),
                  const ReadMoreText(
                    trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "Show More",
                      trimExpandedText: "Less",
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                          " when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                  ),

                  ///Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: "Reviews(200)", onPressed: (){}, showActionButton: false),
                      IconButton(onPressed: () => Get.to(const ProductReviewScreen()), icon: const Icon(Iconsax.arrow_right_3, size: 18)),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
