import '../../../core/app_export.dart';

/// This class is used in the [chipview2_item_widget] screen.
class Chipview2ItemModel {
  Chipview2ItemModel({
    this.am,
    this.isSelected,
  }) {
    am = am ?? "09:00 AM";
    isSelected = isSelected ?? false;
  }

  String? am;

  bool? isSelected;
}
