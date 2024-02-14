import '../../../core/app_export.dart';

/// This class is used in the [widget_item_widget] screen.
class WidgetItemModel {
  WidgetItemModel({
    this.group,
    this.id,
  }) {
    group = group ?? "Advocacy";
    id = id ?? "";
  }

  String? group;

  String? id;
}
