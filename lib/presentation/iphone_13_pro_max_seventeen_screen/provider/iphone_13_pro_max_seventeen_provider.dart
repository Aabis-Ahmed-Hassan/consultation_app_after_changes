import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_seventeen_screen/models/iphone_13_pro_max_seventeen_model.dart';

/// A provider class for the Iphone13ProMaxSeventeenScreen.
///
/// This provider manages the state of the Iphone13ProMaxSeventeenScreen, including the
/// current iphone13ProMaxSeventeenModelObj
class Iphone13ProMaxSeventeenProvider extends ChangeNotifier {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  Iphone13ProMaxSeventeenModel iphone13ProMaxSeventeenModelObj =
      Iphone13ProMaxSeventeenModel();

  bool isShowPassword = true;

  bool isShowPassword1 = true;

  @override
  void dispose() {
    super.dispose();
    newpasswordController.dispose();
    newpasswordController1.dispose();
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
