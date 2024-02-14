import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_sixteen_screen/models/iphone_13_pro_max_sixteen_model.dart';

/// A provider class for the Iphone13ProMaxSixteenScreen.
///
/// This provider manages the state of the Iphone13ProMaxSixteenScreen, including the
/// current iphone13ProMaxSixteenModelObj
class Iphone13ProMaxSixteenProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  Iphone13ProMaxSixteenModel iphone13ProMaxSixteenModelObj =
      Iphone13ProMaxSixteenModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }
}
