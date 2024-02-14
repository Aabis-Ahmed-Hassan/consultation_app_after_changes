import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_four_screen/models/iphone_13_pro_max_four_model.dart';
import '../models/userprofilesection_item_model.dart';

/// A provider class for the Iphone13ProMaxFourScreen.
///
/// This provider manages the state of the Iphone13ProMaxFourScreen, including the
/// current iphone13ProMaxFourModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxFourProvider extends ChangeNotifier {
  Iphone13ProMaxFourModel iphone13ProMaxFourModelObj =
      Iphone13ProMaxFourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
