import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_twelve_screen/models/iphone_13_pro_max_twelve_model.dart';

/// A provider class for the Iphone13ProMaxTwelveScreen.
///
/// This provider manages the state of the Iphone13ProMaxTwelveScreen, including the
/// current iphone13ProMaxTwelveModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxTwelveProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Iphone13ProMaxTwelveModel iphone13ProMaxTwelveModelObj =
      Iphone13ProMaxTwelveModel();

  bool isShowPassword = true;

  bool keepMeLoggedIn = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changeCheckBox1(bool value) {
    keepMeLoggedIn = value;
    notifyListeners();
  }
}
