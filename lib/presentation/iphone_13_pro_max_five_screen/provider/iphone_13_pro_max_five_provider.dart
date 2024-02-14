import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_five_screen/models/iphone_13_pro_max_five_model.dart';
import '../models/widget_item_model.dart';

/// A provider class for the Iphone13ProMaxFiveScreen.
///
/// This provider manages the state of the Iphone13ProMaxFiveScreen, including the
/// current iphone13ProMaxFiveModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxFiveProvider extends ChangeNotifier {
  Iphone13ProMaxFiveModel iphone13ProMaxFiveModelObj =
      Iphone13ProMaxFiveModel();

  @override
  void dispose() {
    super.dispose();
  }
}
