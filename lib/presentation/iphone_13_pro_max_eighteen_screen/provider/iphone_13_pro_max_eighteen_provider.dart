import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_eighteen_screen/models/iphone_13_pro_max_eighteen_model.dart';

/// A provider class for the Iphone13ProMaxEighteenScreen.
///
/// This provider manages the state of the Iphone13ProMaxEighteenScreen, including the
/// current iphone13ProMaxEighteenModelObj
class Iphone13ProMaxEighteenProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  Iphone13ProMaxEighteenModel iphone13ProMaxEighteenModelObj =
      Iphone13ProMaxEighteenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
