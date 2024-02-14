import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_two_screen/models/iphone_13_pro_max_two_model.dart';
import '../models/pexelskassandr_item_model.dart';
import '../models/dynamicview_item_model.dart';

/// A provider class for the Iphone13ProMaxTwoScreen.
///
/// This provider manages the state of the Iphone13ProMaxTwoScreen, including the
/// current iphone13ProMaxTwoModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxTwoProvider extends ChangeNotifier {
  Iphone13ProMaxTwoModel iphone13ProMaxTwoModelObj = Iphone13ProMaxTwoModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
