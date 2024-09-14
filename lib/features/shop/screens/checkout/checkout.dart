import 'package:e_commerce_flutter/common/widgets/products/cart/rounded_container.dart';
import 'package:e_commerce_flutter/common/widgets/success_screen/succes_screen.dart';
import 'package:e_commerce_flutter/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce_flutter/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce_flutter/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce_flutter/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce_flutter/navigation_menu.dart';
import 'package:e_commerce_flutter/utils/constants/colors.dart';
import 'package:e_commerce_flutter/utils/constants/image_strings.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:e_commerce_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title:
              Text("Cart", style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Items cart
              const TCartItems(showAddRemoveButtons: true),
              const SizedBox(height: TSizes.spaceBtwSections / 3),

              ///Coupon TextFields
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    ///Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    ///Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    ///Payments methods
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    ///Address
                    TBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      ///Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: "Payment Success!",
              subTitle: "Your item will e shipped soon!",
              onPressed: () => Get.offAll( ()=> const NavigationMenu()),
          )),
          child: const Text("Checkout \$250"),
        ),
      ),
    );
  }
}
