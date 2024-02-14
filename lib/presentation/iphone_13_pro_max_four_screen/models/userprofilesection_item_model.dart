import '../../../core/app_export.dart';

/// This class is used in the [userprofilesection_item_widget] screen.
class UserprofilesectionItemModel {
  UserprofilesectionItemModel({
    this.resources,
    this.duration,
    this.id,
  }) {
    resources = resources ?? "What is Digital Marketing?";
    duration = duration ?? "2 Hours";
    id = id ?? "";
  }

  String? resources;

  String? duration;

  String? id;
}
