import 'package:e_commerce_flutter/common/widgets/products/cart/rounded_container.dart';
import 'package:e_commerce_flutter/utils/constants/colors.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:e_commerce_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItem extends StatelessWidget {
  const TOrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 4,
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems),
      itemBuilder: (_, index) => TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///Row 1
            Row(
              children: [
                /// 1 - Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: TSizes.spaceBtwItems / 2),

                /// 2 - Status and Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Processing",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: TColors.primary, fontWeightDelta: 1),
                      ),
                      Text(
                        "31 August 2024",
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ),
                ),

                /// 3 - Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.arrow_right_34, size: TSizes.sm),
                )
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///Row 2
            Row(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    const Icon(Iconsax.tag),
                    const SizedBox(width: TSizes.spaceBtwItems / 2),
                    Expanded(
                        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order",
                            style: Theme.of(context).textTheme.labelMedium),
                        Text("[#234f4]",
                            style: Theme.of(context).textTheme.titleMedium)
                      ],
                    ))
                  ],
                )),

                ///Row 2
                Expanded(
                    child: Row(
                  children: [
                    const Icon(Iconsax.calendar),
                    const SizedBox(width: TSizes.spaceBtwItems / 2),
                    Expanded(
                        child: Column(
                      children: [
                        Text("Shipping Date",
                            style: Theme.of(context).textTheme.labelMedium),
                        Text("31 August 2024",
                            style: Theme.of(context).textTheme.titleMedium)
                      ],
                    ))
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
