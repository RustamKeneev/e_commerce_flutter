import 'package:e_commerce_flutter/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_flutter/common/widgets/products/widgets/product_price_text.dart';
import 'package:e_commerce_flutter/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_flutter/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_flutter/utils/constants/colors.dart';
import 'package:e_commerce_flutter/utils/constants/enums.dart';
import 'package:e_commerce_flutter/utils/constants/image_strings.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:e_commerce_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/products/cart/rounded_container.dart';

class TProductsMetaData extends StatelessWidget {
  const TProductsMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Price and Sale price
        Row(
          children: [
            ///Sale Tage
            TRoundedContainer(
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
            const SizedBox(width: TSizes.spaceBtwItems),

            ///Price
            Text("\$250",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: "176", isLarge: true)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        ///Title
        const TProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Stock status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text("InStock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            TCircularImage(
                image: TImages.shoesIcon,
                width: 32,
                height: 32,
                overlayColor: dark ? TColors.white : TColors.black),
            const Expanded(
                child: TBrandTitleWithVerifiedIcon(
                    title: "Nike", brandTextSize: TextSizes.medium)
            ),
          ],
        ),
      ],
    );
  }
}
