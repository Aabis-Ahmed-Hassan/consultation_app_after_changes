import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_seventyone_screen/models/iphone_13_pro_max_seventyone_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../models/chipview4_item_model.dart';

/// A provider class for the Iphone13ProMaxSeventyoneScreen.
///
/// This provider manages the state of the Iphone13ProMaxSeventyoneScreen, including the
/// current iphone13ProMaxSeventyoneModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxSeventyoneProvider extends ChangeNotifier {
  Iphone13ProMaxSeventyoneModel iphone13ProMaxSeventyoneModelObj =
      Iphone13ProMaxSeventyoneModel();

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    iphone13ProMaxSeventyoneModelObj.chipview4ItemList.forEach((element) {
      element.isSelected = false;
    });
    iphone13ProMaxSeventyoneModelObj.chipview4ItemList[index].isSelected =
        value;
    notifyListeners();
  }
}
