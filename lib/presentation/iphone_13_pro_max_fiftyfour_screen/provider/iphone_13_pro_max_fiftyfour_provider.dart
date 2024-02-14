import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_fiftyfour_screen/models/iphone_13_pro_max_fiftyfour_model.dart';

/// A provider class for the Iphone13ProMaxFiftyfourScreen.
///
/// This provider manages the state of the Iphone13ProMaxFiftyfourScreen, including the
/// current iphone13ProMaxFiftyfourModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxFiftyfourProvider extends ChangeNotifier {
  TextEditingController paymentMethodController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expiresOnController = TextEditingController();

  TextEditingController csvController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  Iphone13ProMaxFiftyfourModel iphone13ProMaxFiftyfourModelObj =
      Iphone13ProMaxFiftyfourModel();

  @override
  void dispose() {
    super.dispose();
    paymentMethodController.dispose();
    cardNumberController.dispose();
    expiresOnController.dispose();
    csvController.dispose();
    addressController.dispose();
  }
}
