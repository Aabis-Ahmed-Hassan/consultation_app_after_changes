import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_fiftytwo_screen/models/iphone_13_pro_max_fiftytwo_model.dart';

/// A provider class for the Iphone13ProMaxFiftytwoScreen.
///
/// This provider manages the state of the Iphone13ProMaxFiftytwoScreen, including the
/// current iphone13ProMaxFiftytwoModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxFiftytwoProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Iphone13ProMaxFiftytwoModel iphone13ProMaxFiftytwoModelObj =
      Iphone13ProMaxFiftytwoModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
  }
}
