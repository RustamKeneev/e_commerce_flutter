import 'package:e_commerce_flutter/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_flutter/common/widgets/products/cart/rounded_container.dart';
import 'package:e_commerce_flutter/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_flutter/features/shop/screens/products_details/product_detail.dart';
import 'package:e_commerce_flutter/utils/constants/colors.dart';
import 'package:e_commerce_flutter/utils/constants/image_strings.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:e_commerce_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../styles/shadows.dart';
import '../../icons/t_circular_icon.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';
import '../widgets/product_price_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: ()=> Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.grey : TColors.white
        ),
        child: Column(
          children: [
            ///Thumbnail data
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  ///Thumbnail image
                  const TRoundedImage(imageUrl: TImages.promoBanner1, applyImageRadius: true),

                  ///Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  ///Favourite Icon
                  const Positioned(
                      top: 0,
                      right: 0,
                      child:
                          TCircularIcon(icon: Iconsax.heart5, color: Colors.red))
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),

            ///Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: "Alex shoes Pro",
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),
            const Spacer(),
            ///Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: '35.0',),
                ),
                ///Add to Card
                Container(
                  decoration: const BoxDecoration(
                      color: TColors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight: Radius.circular(TSizes.productImageRadius)
                      )
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(child: Icon(Iconsax.add, color: TColors.white,),),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
