import 'package:flutter/material.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/presentation/iphone_13_pro_max_nineteen_screen/models/iphone_13_pro_max_nineteen_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../models/chipview6_item_model.dart';

/// A provider class for the Iphone13ProMaxNineteenScreen.
///
/// This provider manages the state of the Iphone13ProMaxNineteenScreen, including the
/// current iphone13ProMaxNineteenModelObj

// ignore_for_file: must_be_immutable
class Iphone13ProMaxNineteenProvider extends ChangeNotifier {
  Iphone13ProMaxNineteenModel iphone13ProMaxNineteenModelObj =
      Iphone13ProMaxNineteenModel();

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    iphone13ProMaxNineteenModelObj.chipview6ItemList.forEach((element) {
      element.isSelected = false;
    });
    iphone13ProMaxNineteenModelObj.chipview6ItemList[index].isSelected = value;
    notifyListeners();
  }
}
