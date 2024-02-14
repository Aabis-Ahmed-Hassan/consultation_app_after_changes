import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_six_screen/models/iphone_13_pro_max_six_model.dart';
import '../models/userprofile_item_model.dart';

/// A provider class for the Iphone13ProMaxSixScreen.
///
/// This provider manages the state of the Iphone13ProMaxSixScreen, including the
/// current iphone13ProMaxSixModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxSixProvider extends ChangeNotifier {
  Iphone13ProMaxSixModel iphone13ProMaxSixModelObj = Iphone13ProMaxSixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
