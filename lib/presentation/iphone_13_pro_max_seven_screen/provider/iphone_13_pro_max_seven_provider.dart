import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_seven_screen/models/iphone_13_pro_max_seven_model.dart';
import '../models/meetingcomponent_item_model.dart';

/// A provider class for the Iphone13ProMaxSevenScreen.
///
/// This provider manages the state of the Iphone13ProMaxSevenScreen, including the
/// current iphone13ProMaxSevenModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxSevenProvider extends ChangeNotifier {
  Iphone13ProMaxSevenModel iphone13ProMaxSevenModelObj =
      Iphone13ProMaxSevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
