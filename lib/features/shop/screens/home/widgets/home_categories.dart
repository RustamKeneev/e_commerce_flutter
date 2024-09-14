import 'package:e_commerce_flutter/features/shop/screens/subcategory/subcategories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVertivalsImageText(image: TImages.shoesIcon, title: 'Shoes', onTap: ()=> Get.to(()=> const SubCategoryScreen()),);
        },
      ),
    );
  }
}
