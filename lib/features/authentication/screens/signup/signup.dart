import 'package:e_commerce_flutter/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_flutter/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_flutter/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:e_commerce_flutter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///Divider
              const TFormDivider(dividerText: TTexts.orSignUpWith),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///Social Buttons
          const TSocialButtons(),
              const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ),
    );
  }
}

