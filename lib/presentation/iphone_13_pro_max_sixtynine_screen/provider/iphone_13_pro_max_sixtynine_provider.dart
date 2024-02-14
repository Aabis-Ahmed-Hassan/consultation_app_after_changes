import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_sixtynine_screen/models/iphone_13_pro_max_sixtynine_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../models/chipview_item_model.dart';

/// A provider class for the Iphone13ProMaxSixtynineScreen.
///
/// This provider manages the state of the Iphone13ProMaxSixtynineScreen, including the
/// current iphone13ProMaxSixtynineModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxSixtynineProvider extends ChangeNotifier {
  Iphone13ProMaxSixtynineModel iphone13ProMaxSixtynineModelObj =
      Iphone13ProMaxSixtynineModel();

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    iphone13ProMaxSixtynineModelObj.chipviewItemList.forEach((element) {
      element.isSelected = false;
    });
    iphone13ProMaxSixtynineModelObj.chipviewItemList[index].isSelected = value;
    notifyListeners();
  }
}
