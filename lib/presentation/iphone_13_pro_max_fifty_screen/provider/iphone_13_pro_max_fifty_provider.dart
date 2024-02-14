import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_fifty_screen/models/iphone_13_pro_max_fifty_model.dart';

/// A provider class for the Iphone13ProMaxFiftyScreen.
///
/// This provider manages the state of the Iphone13ProMaxFiftyScreen, including the
/// current iphone13ProMaxFiftyModelObj
class Iphone13ProMaxFiftyProvider extends ChangeNotifier {
  TextEditingController clientTestimonialsSectionController =
      TextEditingController();

  TextEditingController reviewsSectionController = TextEditingController();

  TextEditingController doctorReviewsSectionController =
      TextEditingController();

  TextEditingController recentOrdersSectionController = TextEditingController();

  Iphone13ProMaxFiftyModel iphone13ProMaxFiftyModelObj =
      Iphone13ProMaxFiftyModel();

  @override
  void dispose() {
    super.dispose();
    clientTestimonialsSectionController.dispose();
    reviewsSectionController.dispose();
    doctorReviewsSectionController.dispose();
    recentOrdersSectionController.dispose();
  }
}
