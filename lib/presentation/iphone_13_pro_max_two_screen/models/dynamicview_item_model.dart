import '../../../core/app_export.dart';

/// This class is used in the [dynamicview_item_widget] screen.
class DynamicviewItemModel {
  DynamicviewItemModel({
    this.digitalMarketingText,
    this.resourcesText1,
    this.resourcesText2,
    this.id,
  }) {
    digitalMarketingText = digitalMarketingText ?? "Digital Marketing";
    resourcesText1 = resourcesText1 ?? "Feb 07 , 2022";
    resourcesText2 = resourcesText2 ?? "Minute 25 : 13";
    id = id ?? "";
  }

  String? digitalMarketingText;

  String? resourcesText1;

  String? resourcesText2;

  String? id;
}
