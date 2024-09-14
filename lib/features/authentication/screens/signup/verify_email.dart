import 'package:e_commerce_flutter/common/widgets/success_screen/succes_screen.dart';
import 'package:e_commerce_flutter/features/authentication/screens/login/login.dart';
import 'package:e_commerce_flutter/utils/constants/image_strings.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                ///Image
                Image(
                  image: const AssetImage(TImages.verifyIllustration),
                  width: THelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///Title and SubTitle
                Text(TTexts.confirmEmail,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text("support@gmail.com",
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(TTexts.confirmEmailSubTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: TImages.onBoardingImage3,
                          title: TTexts.yourAccountCreatedTitle,
                          subTitle: TTexts.yourAccountCreatedSubTitle,
                          onPressed:() => Get.to(()=> const LoginScreen()),
                        )),
                    child: const Text(TTexts.tContinue),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(TTexts.resendEmail),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
