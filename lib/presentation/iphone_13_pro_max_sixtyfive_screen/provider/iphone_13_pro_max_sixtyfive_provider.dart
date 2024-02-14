import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_sixtyfive_screen/models/iphone_13_pro_max_sixtyfive_model.dart';
import '../models/userprofile1_item_model.dart';

/// A provider class for the Iphone13ProMaxSixtyfiveScreen.
///
/// This provider manages the state of the Iphone13ProMaxSixtyfiveScreen, including the
/// current iphone13ProMaxSixtyfiveModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxSixtyfiveProvider extends ChangeNotifier {
  Iphone13ProMaxSixtyfiveModel iphone13ProMaxSixtyfiveModelObj =
      Iphone13ProMaxSixtyfiveModel();

  @override
  void dispose() {
    super.dispose();
  }
}
