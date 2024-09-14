import 'package:e_commerce_flutter/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:e_commerce_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TBillingAddressSection extends StatelessWidget{
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: "Shipping Address", buttonTitle: "Change", onPressed: (){}),
        Text("Rustam Keneev", style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

         Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text("+996-500-005-006", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text("Bishkek, Kyrgyzstan", style: Theme.of(context).textTheme.bodyMedium, softWrap: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
      ],
    );
  }
}