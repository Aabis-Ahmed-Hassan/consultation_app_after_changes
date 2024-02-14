import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_seventy_screen/models/iphone_13_pro_max_seventy_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../models/chipview2_item_model.dart';

/// A provider class for the Iphone13ProMaxSeventyScreen.
///
/// This provider manages the state of the Iphone13ProMaxSeventyScreen, including the
/// current iphone13ProMaxSeventyModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxSeventyProvider extends ChangeNotifier {
  Iphone13ProMaxSeventyModel iphone13ProMaxSeventyModelObj =
      Iphone13ProMaxSeventyModel();

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    iphone13ProMaxSeventyModelObj.chipview2ItemList.forEach((element) {
      element.isSelected = false;
    });
    iphone13ProMaxSeventyModelObj.chipview2ItemList[index].isSelected = value;
    notifyListeners();
  }
}
