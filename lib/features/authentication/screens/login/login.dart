import 'package:e_commerce_flutter/common/styles/spacing_styles.dart';
import 'package:e_commerce_flutter/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_flutter/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_flutter/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_flutter/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_flutter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [

              ///Logo, Title, SubTitle
              TLoginHeader(),

              ///Form
              TLoginForm(),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignInWith),
              SizedBox(height: TSizes.spaceBtwSections),

              ///Footer
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


