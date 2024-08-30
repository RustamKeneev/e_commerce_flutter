import 'package:e_commerce_flutter/common/widgets/products/cart/rounded_container.dart';
import 'package:e_commerce_flutter/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_flutter/utils/constants/colors.dart';
import 'package:e_commerce_flutter/utils/constants/image_strings.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:e_commerce_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TBillingAmmountSection extends StatelessWidget{
  const TBillingAmmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: "Payment Method", buttonTitle: "Change", onPressed: (){}),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 32,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(TImages.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text("PayPal", style: Theme.of(context).textTheme.bodyLarge)
          ],
        )
      ],
    );
  }
}