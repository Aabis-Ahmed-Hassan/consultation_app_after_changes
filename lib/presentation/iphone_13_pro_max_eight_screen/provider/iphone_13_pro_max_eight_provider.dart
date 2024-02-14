import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_eight_screen/models/iphone_13_pro_max_eight_model.dart';

/// A provider class for the Iphone13ProMaxEightScreen.
///
/// This provider manages the state of the Iphone13ProMaxEightScreen, including the
/// current iphone13ProMaxEightModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxEightProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Iphone13ProMaxEightModel iphone13ProMaxEightModelObj =
      Iphone13ProMaxEightModel();

  bool isShowPassword = true;

  bool isShowPassword1 = true;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changePasswordVisibility1() {
    isShowPassword1 = !isShowPassword1;
    notifyListeners();
  }
}
