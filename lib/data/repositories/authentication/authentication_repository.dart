import 'package:e_commerce_flutter/features/authentication/screens/login/login.dart';
import 'package:e_commerce_flutter/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';

// class AuthenticationRepository extends GetxController {
//   static AuthenticationRepository get instance => Get.find();
//
//   ///Variable
//   final deviceStorage = GetStorage();
//
//   ///Called from main.dart on app launch
//   @override
//   void onReady() {
//     FlutterNativeSplash.remove();
//     screenRedirect();
//   }
//
//   ///Function to Show Relevant Screen
//   screenRedirect() async {
//
//     if(kDebugMode){
//       print("=======Get Storage ==========");
//       print(deviceStorage.read("isFirstTime"));
//     }
//
//     deviceStorage.writeIfNull("isFirstTime", true);
//     deviceStorage.read("isFirstTime") != true ? Get.offAll(()=> const LoginScreen()) : const OnBoardingScreen();
//   }
// }


class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Local storage for device
  final deviceStorage = GetStorage();

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to Show Relevant Screen
  screenRedirect() async {
    if (kDebugMode) {
      print("=======Get Storage ==========");
      print(deviceStorage.read("isFirstTime"));
    }

    // Initialize 'isFirstTime' to true if not set
    deviceStorage.writeIfNull("isFirstTime", true);

    // Check if the user is opening the app for the first time
    if (deviceStorage.read("isFirstTime") == true) {
      // Set 'isFirstTime' to false after the first launch
      deviceStorage.write("isFirstTime", false);
      // Redirect to Onboarding screen
      Get.offAll(() => const OnBoardingScreen());
    } else {
      // Redirect to Login screen for subsequent launches
      Get.offAll(() => const LoginScreen());
    }
  }
}
