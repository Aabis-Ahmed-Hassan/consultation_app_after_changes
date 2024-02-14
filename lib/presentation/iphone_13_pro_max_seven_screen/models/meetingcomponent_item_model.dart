import '../../../core/app_export.dart';

/// This class is used in the [meetingcomponent_item_widget] screen.
class MeetingcomponentItemModel {
  MeetingcomponentItemModel({
    this.meetingImage,
    this.meetingTitle,
    this.meetingDescription,
    this.id,
  }) {
    meetingImage = meetingImage ?? ImageConstant.imgUnion107x165;
    meetingTitle = meetingTitle ?? "1 Hour Staff Meeting";
    meetingDescription = meetingDescription ??
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.";
    id = id ?? "";
  }

  String? meetingImage;

  String? meetingTitle;

  String? meetingDescription;

  String? id;
}
