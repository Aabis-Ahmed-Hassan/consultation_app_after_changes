import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_sixtyfour_screen/models/iphone_13_pro_max_sixtyfour_model.dart';
import '../models/viewhierarchy_item_model.dart';

/// A provider class for the Iphone13ProMaxSixtyfourScreen.
///
/// This provider manages the state of the Iphone13ProMaxSixtyfourScreen, including the
/// current iphone13ProMaxSixtyfourModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxSixtyfourProvider extends ChangeNotifier {
  Iphone13ProMaxSixtyfourModel iphone13ProMaxSixtyfourModelObj =
      Iphone13ProMaxSixtyfourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
