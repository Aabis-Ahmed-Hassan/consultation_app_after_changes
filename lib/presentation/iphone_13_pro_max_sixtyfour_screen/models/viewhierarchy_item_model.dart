import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.imageProp,
    this.textProp1,
    this.textProp2,
    this.id,
  }) {
    imageProp = imageProp ?? ImageConstant.imgPexelsGeorgeMilton6954174;
    textProp1 = textProp1 ?? "Free Live Webinars";
    textProp2 = textProp2 ?? "For Teachers/Administration/Parents - Wednesdays";
    id = id ?? "";
  }

  String? imageProp;

  String? textProp1;

  String? textProp2;

  String? id;
}
