import '../../../core/app_export.dart';

/// This class is used in the [chipview4_item_widget] screen.
class Chipview4ItemModel {
  Chipview4ItemModel({
    this.am,
    this.isSelected,
  }) {
    am = am ?? "09:00 AM";
    isSelected = isSelected ?? false;
  }

  String? am;

  bool? isSelected;
}
