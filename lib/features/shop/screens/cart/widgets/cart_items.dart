import 'package:flutter/material.dart';
import '../../../../../common/widgets/products/widgets/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';
import 'add_remove_button.dart';
import 'cart_menu_icon.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: TSizes.spaceBtwItems),

          if (showAddRemoveButtons)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ///Extra Space
                  SizedBox(width: 70),

                  ///Add remove buttons
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),

              ///Product total price
              TProductPriceText(price: "250")
            ],
          )
        ],
      ),
    );
  }
}
