import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_sixtyeight_screen/models/iphone_13_pro_max_sixtyeight_model.dart';

/// A provider class for the Iphone13ProMaxSixtyeightScreen.
///
/// This provider manages the state of the Iphone13ProMaxSixtyeightScreen, including the
/// current iphone13ProMaxSixtyeightModelObj
class Iphone13ProMaxSixtyeightProvider extends ChangeNotifier {
  Iphone13ProMaxSixtyeightModel iphone13ProMaxSixtyeightModelObj =
      Iphone13ProMaxSixtyeightModel();

  @override
  void dispose() {
    super.dispose();
  }
}
