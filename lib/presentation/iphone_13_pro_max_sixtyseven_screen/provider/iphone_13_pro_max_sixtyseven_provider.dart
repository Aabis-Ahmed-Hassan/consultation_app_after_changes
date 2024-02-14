import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_sixtyseven_screen/models/iphone_13_pro_max_sixtyseven_model.dart';

/// A provider class for the Iphone13ProMaxSixtysevenScreen.
///
/// This provider manages the state of the Iphone13ProMaxSixtysevenScreen, including the
/// current iphone13ProMaxSixtysevenModelObj
class Iphone13ProMaxSixtysevenProvider extends ChangeNotifier {
  Iphone13ProMaxSixtysevenModel iphone13ProMaxSixtysevenModelObj =
      Iphone13ProMaxSixtysevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
