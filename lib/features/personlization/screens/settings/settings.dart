import 'package:e_commerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_flutter/common/widgets/list_title/settings_menu_tile.dart';
import 'package:e_commerce_flutter/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_flutter/features/personlization/screens/adress/address.dart';
import 'package:e_commerce_flutter/features/shop/screens/order/order.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/list_title/user_profile_tile.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  TAppBar(
                      title: Text("Account",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: Colors.white))
                  ),
                  TUserProfileTile(onPressed: ()=> Get.to(()=> const ProfileScreen())),
                  const SizedBox(
                    height: TSizes.spaceBtwSections / 2,
                  )
                ],
              ),
            ),

            ///Body
            Padding(padding: const EdgeInsets.all(TSizes.spaceBtwSections / 4),
              child: Column(
                children: [
                  ///Account Settings
                  const TSectionHeading(title: "Account Setting", showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                   TSettingsMenuTile(icon: Iconsax.safe_home, title: "My Address", subTitle: "Set shopping delivery address", onTap: ()=> Get.to(()=> const UserAddressScreen()),),
                  const TSettingsMenuTile(icon: Iconsax.shopping_cart, title: "My Cart", subTitle: "Add, remove products and move to checkout"),
                  TSettingsMenuTile(icon: Iconsax.bag_tick, title: "My Orders", subTitle: "In-progress and Completed Orders", onTap: ()=> Get.to(()=> const OrderScreen()),),
                  const TSettingsMenuTile(icon: Iconsax.bank, title: "Bank Coupons", subTitle: "List of all the discounted coupons"),
                  const TSettingsMenuTile(icon: Iconsax.discount_shape, title: "My Address", subTitle: "Set shopping delivery address"),
                  const TSettingsMenuTile(icon: Iconsax.notification, title: "Notifications", subTitle: "Set any kind of notification message"),
                  const TSettingsMenuTile(icon: Iconsax.security_card, title: "Account Privacy", subTitle: "Manage data usage and connected accounts"),

                  ///App Settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(title: "App Settings", showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(icon: Iconsax.document_upload, title: "Load data", subTitle: "Upload data to your Cloud Firebase"),
                  TSettingsMenuTile(icon: Iconsax.location, title: "Geolocation", subTitle: "Set recommendation based on location", trailing: Switch(value: true, onChanged: (value){}),),
                  TSettingsMenuTile(icon: Iconsax.security_user, title: "Safe Mode", subTitle: "Search result is safe for all ages", trailing: Switch(value: false, onChanged: (value){}),),
                  TSettingsMenuTile(icon: Iconsax.image, title: "HD Image Quality", subTitle: "Set image quality to be seen", trailing: Switch(value: false, onChanged: (value){}),),
                ],
              ),
            )
          ],
        ),

        ///Header
        ///Body
      ),
    );
  }
}
