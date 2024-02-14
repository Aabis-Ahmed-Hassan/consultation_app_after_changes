import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.forSchoolsText,
    this.freeTrialText,
    this.resourcesText,
    this.resources,
    this.resources1,
    this.priceText,
    this.id,
  }) {
    forSchoolsText = forSchoolsText ?? "For Schools";
    freeTrialText = freeTrialText ?? "Free Trial";
    resourcesText = resourcesText ?? "For First 10 days";
    resources = resources ?? "Lorem ipsum dolor";
    resources1 = resources1 ?? "Lorem ipsum dolor sit amet agna";
    priceText = priceText ?? "39.99";
    id = id ?? "";
  }

  String? forSchoolsText;

  String? freeTrialText;

  String? resourcesText;

  String? resources;

  String? resources1;

  String? priceText;

  String? id;
}
