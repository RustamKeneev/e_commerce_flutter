import 'package:e_commerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_flutter/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_flutter/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_flutter/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_flutter/features/shop/screens/brand/brand_products.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandScreen extends StatelessWidget{
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text("Brand"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Heading
              const TSectionHeading(title: "Brands"),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///Brands
              TGridLayout(itemCount: 10, mainAxisExtent: 80, itemBuilder: (context, index)=> TBrandCard(showBorder: true, onTap: ()=> Get.to(()=> const BrandProducts()),))
            ],
          ),
        ),
      ),
    );
  }
}