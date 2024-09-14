import 'package:e_commerce_flutter/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_commerce_flutter/utils/constants/colors.dart';
import 'package:e_commerce_flutter/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
      home: const Scaffold(backgroundColor: TColors.primary, body: Center(child: CircularProgressIndicator(color: TColors.white,),),),
    );
  }
}