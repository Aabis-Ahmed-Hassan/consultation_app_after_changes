import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_fiftythree_screen/models/iphone_13_pro_max_fiftythree_model.dart';

/// A provider class for the Iphone13ProMaxFiftythreeScreen.
///
/// This provider manages the state of the Iphone13ProMaxFiftythreeScreen, including the
/// current iphone13ProMaxFiftythreeModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxFiftythreeProvider extends ChangeNotifier {
  TextEditingController profileInfoController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController paymentMethodController = TextEditingController();

  Iphone13ProMaxFiftythreeModel iphone13ProMaxFiftythreeModelObj =
      Iphone13ProMaxFiftythreeModel();

  @override
  void dispose() {
    super.dispose();
    profileInfoController.dispose();
    passwordController.dispose();
    paymentMethodController.dispose();
  }
}
